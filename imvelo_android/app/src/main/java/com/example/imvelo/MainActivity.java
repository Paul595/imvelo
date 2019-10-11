package com.example.imvelo;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.SeekBar;

import com.john.waveview.WaveView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //create Wave
        final WaveView wave = (WaveView)findViewById(R.id.waveView);
        wave.setProgress(45);
        final WaveView wave2 = (WaveView)findViewById(R.id.waveView2);
        wave2.setProgress(35);
        final WaveView wave3 = (WaveView)findViewById(R.id.waveView3);
    }
}
