package com.example.myapplication;

import android.graphics.Color;
import androidx.appcompat.widget.Toolbar;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import com.example.myapplication.R;

public class MainActivity extends AppCompatActivity {

    RelativeLayout rootLayout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        rootLayout = findViewById(R.id.root_layout);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.options_menu, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();

        if (id == R.id.color_red) {
            rootLayout.setBackgroundColor(Color.RED);
            return true;
        } else if (id == R.id.color_green) {
            rootLayout.setBackgroundColor(Color.GREEN);
            return true;
        } else if (id == R.id.color_blue) {
            rootLayout.setBackgroundColor(Color.BLUE);
            return true;
        } else if (id == R.id.color_yellow) {
            rootLayout.setBackgroundColor(Color.YELLOW);
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}