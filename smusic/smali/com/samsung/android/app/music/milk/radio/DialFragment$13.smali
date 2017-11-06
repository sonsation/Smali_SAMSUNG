.class Lcom/samsung/android/app/music/milk/radio/DialFragment$13;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$OnScrollText;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/DialFragment;->setStationSongArtistLabels(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$13;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollTextEnd()V
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$13;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$1400(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setSelected(Z)V

    .line 1021
    return-void
.end method
