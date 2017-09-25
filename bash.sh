## web page migration
scp *.html  yandell@desk22.stat.wisc.edu:public/html/R_for_data_sciences
for i in analyze connect curate organize skills visualize
do
  scp $i/*.html yandell@desk22.stat.wisc.edu:public/html/R_for_data_sciences/$i
done
ssh yandell@desk22.stat.wisc.edu ls -Rl public/html/R_for_data_sciences/*
