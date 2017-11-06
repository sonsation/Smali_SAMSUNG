.class Lcom/samsung/android/app/music/milk/share/Twitter$2;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/Twitter;->callOnSnsSignOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/Twitter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/Twitter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/share/Twitter;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/Twitter$2;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter$2;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/share/Twitter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/app/music/milk/share/Twitter$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/share/Twitter$2$1;-><init>(Lcom/samsung/android/app/music/milk/share/Twitter$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method
