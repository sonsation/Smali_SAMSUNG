.class Lcom/samsung/android/app/music/milk/share/Twitter$2$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/Twitter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/share/Twitter$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/Twitter$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/share/Twitter$2;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/Twitter$2$1;->this$1:Lcom/samsung/android/app/music/milk/share/Twitter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter$2$1;->this$1:Lcom/samsung/android/app/music/milk/share/Twitter$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/share/Twitter$2;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/Twitter;->access$400(Lcom/samsung/android/app/music/milk/share/Twitter;)Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Twitter$2$1;->this$1:Lcom/samsung/android/app/music/milk/share/Twitter$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/share/Twitter$2;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/share/Twitter;->getSharedType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;->onSnsSignOut(I)V

    .line 153
    return-void
.end method
