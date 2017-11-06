.class Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;
.super Landroid/os/AsyncTask;
.source "Twitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/share/Twitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/Twitter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/share/Twitter;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/share/Twitter;Lcom/samsung/android/app/music/milk/share/Twitter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/share/Twitter;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/share/Twitter$1;

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;-><init>(Lcom/samsung/android/app/music/milk/share/Twitter;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;->setShareData(Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    return-void
.end method

.method private setShareData(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 0
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    .line 250
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/share/Twitter;->getCoverArtImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 233
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;->this$0:Lcom/samsung/android/app/music/milk/share/Twitter;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/share/Twitter;->access$900(Lcom/samsung/android/app/music/milk/share/Twitter;Lcom/samsung/android/app/music/common/model/share/ShareData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/milk/share/Twitter;->access$1000(Lcom/samsung/android/app/music/milk/share/Twitter;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 233
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
