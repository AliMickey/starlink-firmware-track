import schedule
from threading import Thread
from time import sleep
from starlink.speedtests import schedSpeedtestCalcBuilder

# Function to start schedule thread
def schedInitJobs():
    schedSpeedtestCalcBuilder() # Populate with initial stats
    schedule.every(10).minutes.do(schedSpeedtestCalcBuilder)
    thread = Thread(target=schedPendingRunner)
    thread.start()

# Function to keep scheduler running
def schedPendingRunner():
    while True:
        schedule.run_pending()
        sleep(60)