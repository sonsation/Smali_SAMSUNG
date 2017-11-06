.class public interface abstract Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;
.super Ljava/lang/Object;
.source "ParallaxScrollable.java"


# virtual methods
.method public varargs abstract addMovableView([Landroid/view/View;)V
    .param p1    # [Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setParallaxHolder(ILcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;)V
    .param p2    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
