package com.music.tools;


import org.junit.jupiter.api.Test;
import java.io.*;

public class MusicLrc {

    @Test
    public void test(){
        File file = new File("src/main/java/com/music/tools/lrc/" + "哪里都是你" + ".lrc");
        File file2 = new File("src/main/java/com/music/tools/newlrc/" + "哪里都是你" + ".lrc");

        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));

            int s = 0;



        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

}
