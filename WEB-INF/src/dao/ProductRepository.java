package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository{
    private ArrayList<Product> listOfProducts = new ArrayList<Product>(); //ArrayList를 Product로 캐스팅
    public ProductRepository(){
        Product phone = new Product("P1234", "iPhone 6s", 800000);
        phone.setDescription("4.7-inch,1334X750 Renina HD display, 8-megapixel iSight Camera");
        phone.setCategory("Smart Phone");
        phone.setManufacturer("Apple");
        phone.setUnitsInStock(1000);
        phone.setConditionon("New");
    }
}