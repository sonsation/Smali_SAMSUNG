.class Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;
.super Landroid/os/AsyncTask;
.source "Instagram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/share/Instagram;
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

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/Instagram;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/share/Instagram;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;->this$0:Lcom/samsung/android/app/music/milk/share/Instagram;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/share/Instagram;Lcom/samsung/android/app/music/milk/share/Instagram$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/share/Instagram;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/share/Instagram$1;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;-><init>(Lcom/samsung/android/app/music/milk/share/Instagram;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;->setShareData(Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    return-void
.end method

.method private setShareData(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 0
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    .line 108
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;->this$0:Lcom/samsung/android/app/music/milk/share/Instagram;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/share/Instagram;->getCoverArtImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;->this$0:Lcom/samsung/android/app/music/milk/share/Instagram;

    invoke-static {v3, p1}, Lcom/samsung/android/app/music/milk/share/Instagram;->access$200(Lcom/samsung/android/app/music/milk/share/Instagram;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    .line 91
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v1, "shareIntent":Landroid/content/Intent;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v3, "com.instagram.android"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    const-string v3, "android.intent.extra.TEXT"

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDeeplinkShortenUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v3, "image/jpeg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;->this$0:Lcom/samsung/android/app/music/milk/share/Instagram;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/share/Instagram;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "shareIntent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v1    # "shareIntent":Landroid/content/Intent;
    .restart local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/samsung/android/app/music/milk/share/Instagram;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onSendButtonClicked >> No Activity found to handle Intent"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
