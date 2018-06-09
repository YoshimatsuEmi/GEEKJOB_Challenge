/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BlackJack;

/**
 *
 * @author 44yos
 */

import java.util.*;

abstract class Human{
    abstract public int open();
    abstract public void setCard(ArrayList cardNumber);
    abstract public boolean cheakSum();
    ArrayList<Integer> myCards = new ArrayList<>();
}

class Dealer extends Human{
    ArrayList<Integer> cards = new ArrayList<>();
    public Dealer(){
        for(int i=0;i<4;i++){
            for(int j=1;j<=13;j++){
                if(j<10){
                    cards.add(j);
                }else{
                    cards.add(10);
                }
            }
        }
    }
    public ArrayList deal(){
        Random rand = new Random();
        ArrayList<Integer> cardNumber = new ArrayList<>();
        int number;
        for(int i=0;i<2;i++){
            number=rand.nextInt(12)+1;
            cardNumber.add(cards.get(number));
            //cardNumber.add(rand.nextInt(12)+1);
        }
        return cardNumber;
    }
    public ArrayList hit(){
        Random rand = new Random();
        ArrayList<Integer> cardNumber = new ArrayList<>();
        int number;
        number = rand.nextInt(12)+1;
        cardNumber.add(cards.get(number));
        //cardNumber.add(rand.nextInt(12)+1);
        return cardNumber;
    }
    @Override
    public int open(){
        int sum=0;
        for(int i=0;i<myCards.size();i++){
            sum += myCards.get(i);
        }
        return sum;
    }
    @Override
    public void setCard(ArrayList cardNumber){
        int size = cardNumber.size();
        for(int i=0;i<size;i++){
            int number=(int)cardNumber.get(i);
            myCards.add(number);
        }
    }
    @Override
    public boolean cheakSum(){
        return open() < 17;
    }
}

class User extends Human{
    @Override
    public int open(){
        int sum=0;
        for(int i=0;i<myCards.size();i++){
            sum += (int)myCards.get(i);
        }
        return sum;
    }
    @Override
    public void setCard(ArrayList cardNumber){
        for(int i=0;i<cardNumber.size();i++){
            int number=(int)cardNumber.get(i);
            myCards.add(number);
        }
    }
    @Override
    public boolean cheakSum(){
        return open() < 17;
    }
}

public class blackjack {
   
}
