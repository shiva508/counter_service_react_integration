package com.counter.service;

import com.counter.model.CounterModel;

import java.util.List;

public interface CounterService {
    public CounterModel createCounter(CounterModel counterModel);

    public CounterModel increamentCounterByName(String counterName);

    public CounterModel getCounterByName(String counterName);

    public List<CounterModel> getAllConters();

}
