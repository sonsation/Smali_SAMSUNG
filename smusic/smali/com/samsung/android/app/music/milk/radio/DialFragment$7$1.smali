.class Lcom/samsung/android/app/music/milk/radio/DialFragment$7$1;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/radio/DialFragment$7;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/DialFragment$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/radio/DialFragment$7;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7$1;->this$1:Lcom/samsung/android/app/music/milk/radio/DialFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7$1;->this$1:Lcom/samsung/android/app/music/milk/radio/DialFragment$7;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$700(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    .line 528
    return-void
.end method
