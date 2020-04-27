import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class generatingRelationalDB {

  public static void main(String[] args) {
    try {
      File file = new File(
          "/home/ana/Documentos/phd/archetypedDB/docs/archetypes/openEHR-EHR-OBSERVATION.condition_screening.v0.xml");
      List<String> elements = new ArrayList<String>();
      List<Object> elementsObj = new ArrayList<Object>();
      DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
      DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
      Document document = docBuilder.parse(file);
      document.getDocumentElement().normalize();
      System.out.println("Root element: " + document.getDocumentElement().getNodeName());
      NodeList nodeList = document.getElementsByTagName("archetype").item(0).getChildNodes();
      // nodeList is not iterable, so we are using for loop
      for (int itr = 0; itr < nodeList.getLength(); itr++) {
        Node node = nodeList.item(itr);
        System.out.println("\nNode Name :" + node.getNodeName());
        if (node.getNodeType() == Node.ELEMENT_NODE){
          String content = document.getElementsByTagName(node.getNodeName()).item(0).getTextContent();
          System.out.println("------------------ " + node.getNodeName() + " ----------------------");
          System.out.println(content);
          elements.add(content);
        }
      }

      /*
       * String originalLanguage =
       * document.getElementsByTagName("original_language").item(0).getTextContent();
       * elements.add(originalLanguage); String metadata =
       * document.getElementsByTagName("description").item(0).getTextContent();
       * elements.add(metadata); String terminology =
       * document.getElementsByTagName("terminology_id").item(0).getTextContent();
       * elements.add(terminology); String translations =
       * document.getElementsByTagName("translations").item(0).getTextContent();
       * elements.add(translations); String uid =
       * document.getElementsByTagName("uid").item(0).getTextContent();
       * elements.add(uid);
       */

      // System.out.println(metadata);

    } catch (Exception e) {
      System.out.println(e);
    }
  }
}