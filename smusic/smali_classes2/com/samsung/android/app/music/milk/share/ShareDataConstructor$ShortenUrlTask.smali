.class Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$ShortenUrlTask;
.super Landroid/os/AsyncTask;
.source "ShareDataConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortenUrlTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$ShortenUrlTask;->this$0:Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$1;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$ShortenUrlTask;-><init>(Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$ShortenUrlTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sharePlatform"    # [Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$ShortenUrlTask;->this$0:Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->access$100(Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 126
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$ShortenUrlTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$ShortenUrlTask;->this$0:Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->access$200(Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;)Lcom/samsung/android/app/music/common/model/share/ShareData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setDeeplinkShortenUrl(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$ShortenUrlTask;->this$0:Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->access$400(Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;)Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$OnShareDataResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$ShortenUrlTask;->this$0:Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->access$200(Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;)Lcom/samsung/android/app/music/common/model/share/ShareData;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$ShortenUrlTask;->this$0:Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->access$300(Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;)Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$OnShareDataResultListener;->onShareDataResult(Lcom/samsung/android/app/music/common/model/share/ShareData;Lcom/samsung/android/app/music/common/model/share/SnsInfo;)V

    .line 121
    return-void
.end method
