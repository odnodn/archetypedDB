package mvn;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class GeneratingRelationalDB {

  static Map<String, Map<String, String>> getArquetypeElements(String arquetypePath) {
    Map<String, String> element = new HashMap<String, String>();
    Map<String, Map<String, String>> elements = new HashMap<String, Map<String, String>>();
    try {
      File file = new File(arquetypePath);
      // List<String> elements = new ArrayList<String>();
      // List<Object> elementsObj = new ArrayList<Object>();
      DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
      DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
      Document document = docBuilder.parse(file);
      document.getDocumentElement().normalize();
      System.out.println("Root element: " + document.getDocumentElement().getNodeName());
      NodeList nodeList = document.getElementsByTagName("archetype").item(0).getChildNodes();
      for (int i = 0; i < nodeList.getLength(); i++) {
        element = new HashMap<String, String>();
        Node node = nodeList.item(i);
        String content = new String();
        System.out.println("\nNode Name :" + node.getNodeName());
        System.out.println("\nNode Type :" + node.getNodeType());
        if (node.getNodeType() == Node.ELEMENT_NODE) {
          if (node.hasChildNodes()) {
            NodeList childList = node.getChildNodes();
            for (int j = 0; j < childList.getLength(); j++) {
              Node child = childList.item(j);
              System.out.println("\nNode content :" + child.getTextContent().trim());
              String childContent = child.getTextContent().trim();
              if (!childContent.isEmpty()) {
                String nodeName = child.getNodeName();
                if(child.hasAttributes()){
                  nodeName = child.getAttributes().item(0).getNodeValue();
                }
                content = childContent;
                System.out.println("------------------ " + nodeName + " ----------------------");
                System.out.println(content);
                if(child.getNodeType() == Node.TEXT_NODE){
                  element.put(node.getNodeName(), content);
                }else{
                  element.put(nodeName, content);
                }
              }
            }
            elements.put(node.getNodeName(), element);
          }
        }
      }
      System.out.println(elements.toString());
    }catch(

  Exception e)
  {
    System.out.println(e);
  }return elements;
  }

  static void generatingTables(Map<String, Map<String, String>> archetypeElements) {
    for (Map.Entry<String, Map<String, String>> entry : archetypeElements.entrySet()) {
      System.out.println(entry.getKey() + "/" + entry.getValue());
    }
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