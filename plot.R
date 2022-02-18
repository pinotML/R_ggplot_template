library(tidyverse)

# scatter
p <- d %>% 
        ggplot() + 
        geom_point(aes(x=x,y=y,color=z)) +
        geom_line(aes(x=x,y=y,group=1),color='orange') +
        geom_histogram(aes(x=x,y=y,fill=z),color='black',position="stack",binwidth=1) +
        geom_col(aes(x=x,y=y),fill='grey',position="dodge") +
        geom_boxplot(aes(x,y),notch=TRUE) +
        geom_tile(aes(x=x,y=y,fill=z)) +
        geom_hline(aes(yintercept=y)) +
        geom_vline(aes(xintercept=x)) +
        geom_smooth(aes(x=x,y=y)) +
        scale_x_continuous(breaks = c(1:10)) +
        xlab("") +
        ylab("") + 
        ggtitle("") +
        theme_bw() + 
        theme(text = element_text(size=20), 
              axis.text.x = element_text(angle=90, hjust=1),
              theme(axis.ticks.length=unit(.25, "cm"))) +
        facet_wrap(~w) +
        facet_grid(w~t)
      

