from multiprocessing import Pool

def worker_task(data):
    return data * 2
if __name__ == '__main__':
    with Pool(processes=2) as pool:
        results = pool.map(worker_task, range(10000))
