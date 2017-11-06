.class Lcom/samsung/android/app/music/milk/radio/DialFragment$3$1;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/DialFragment$3;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/radio/DialFragment$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/DialFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/radio/DialFragment$3;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$3$1;->this$1:Lcom/samsung/android/app/music/milk/radio/DialFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$3$1;->this$1:Lcom/samsung/android/app/music/milk/radio/DialFragment$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment$3;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$100(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$3$1;->this$1:Lcom/samsung/android/app/music/milk/radio/DialFragment$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment$3;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$200(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 251
    return-void
.end method
