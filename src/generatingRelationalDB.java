import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class generatingRelationalDB {


  static Map<String, Map<String, String>> getArquetypeElements(String arquetypePath){
    Map<String, String> element = new HashMap<String, String>();
    Map<String, Map<String, String>> elements = new HashMap<String, Map<String, String>>();
    try {
      File file = new File(arquetypePath);
      //List<String> elements = new ArrayList<String>();
      //List<Object> elementsObj = new ArrayList<Object>();
      DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
      DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
      Document document = docBuilder.parse(file);
      document.getDocumentElement().normalize();
      System.out.println("Root element: " + document.getDocumentElement().getNodeName());
      NodeList nodeList = document.getElementsByTagName("archetype").item(0).getChildNodes();
       for (int i = 0; i < nodeList.getLength(); i++) {
        Node node = nodeList.item(i);
        if (node.getNodeType() == Node.ELEMENT_NODE){
          System.out.println("\nNode Name :" + node.getNodeName()); 
          if(node.hasChildNodes()){
            NodeList chilList = document.getElementsByTagName(node.getNodeName()).item(0).getChildNodes();
            for (int j = 0; j < chilList.getLength(); j++) {
              Node child = chilList.item(j);
              if (child.getNodeType() == Node.ELEMENT_NODE){
                String content = document.getElementsByTagName(child.getNodeName()).item(0).getTextContent();
                System.out.println("------------------ " + child.getNodeName() + " ----------------------");
                element.put(child.getNodeName(), content);
              }
            }
            elements.put(node.getNodeName(), element);
          }
        }
      }
      System.out.println(elements.toString());
    } catch (Exception e) {
      System.out.println(e);
    }
    return elements;
  }

  public static void main(String[] args) {
    try {
      String arquetypePath = "/home/ana/Documentos/phd/archetypedDB/docs/archetypes/openEHR-EHR-ADMIN_ENTRY.episode_institution.v0.xml";
      Map<String, Map<String, String>> archetypeElements = getArquetypeElements(arquetypePath);
      System.out.println(archetypeElements);
    } catch (Exception e) {
      System.out.println(e);
    }
  }
}