/// @description Create the spike balls

spikeAngle = 0;

spikes = array_create(4);

for (var i = 0; i < array_length_1d(spikes); i++) {
	spikes[i] = instance_create(x + spikeRadius * dcos(spikeAngle + 90 * i), y - spikeRadius * dsin(spikeAngle + 90 * i), spikeResource);
}

/*spike1 = instance_create(x + spikeRadius * dcos(spikeAngle), y - spikeRadius * dsin(spikeAngle), obj_npc_sth3_orbinaut_spike);
spike2 = instance_create(x + spikeRadius * dcos(spikeAngle + 90), y - spikeRadius * dsin(spikeAngle + 90), obj_npc_sth3_orbinaut_spike);
spike3 = instance_create(x + spikeRadius * dcos(spikeAngle + 180), y - spikeRadius * dsin(spikeAngle + 180), obj_npc_sth3_orbinaut_spike);
spike4 = instance_create(x + spikeRadius * dcos(spikeAngle + 270), y - spikeRadius * dsin(spikeAngle + 270), obj_npc_sth3_orbinaut_spike);*/
