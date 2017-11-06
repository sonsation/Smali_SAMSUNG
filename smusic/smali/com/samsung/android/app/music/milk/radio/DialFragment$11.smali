.class Lcom/samsung/android/app/music/milk/radio/DialFragment$11;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/DialFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 793
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$11;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 796
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$11;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$1102(Lcom/samsung/android/app/music/milk/radio/DialFragment;Z)Z

    .line 797
    const-string v0, "DialFragment"

    const-string v1, "[onModeChanged] "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$11;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$1200(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    .line 799
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 808
    const-string v0, "DialFragment"

    const-string v1, "[onSizeChanged] "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$11;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$1200(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    .line 810
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 804
    return-void
.end method
