.class Lcom/samsung/android/app/music/milk/radio/DialFragment$6$1;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/DialFragment$6;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/radio/DialFragment$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/DialFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/radio/DialFragment$6;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$6$1;->this$1:Lcom/samsung/android/app/music/milk/radio/DialFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$6$1;->this$1:Lcom/samsung/android/app/music/milk/radio/DialFragment$6;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment$6;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$700(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    .line 413
    return-void
.end method
