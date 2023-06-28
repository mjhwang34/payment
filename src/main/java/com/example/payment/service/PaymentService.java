package com.example.payment.service;

import com.example.payment.mapper.MainMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentService {
    private final MainMapper mainMapper;

    @Autowired
    public PaymentService(MainMapper mainMapper){this.mainMapper=mainMapper;}

    //not used
    public String testSerivce(){
        String info = mainMapper.getInfo();
        return info;
    }
}
