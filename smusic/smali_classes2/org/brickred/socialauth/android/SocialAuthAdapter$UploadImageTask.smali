.class Lorg/brickred/socialauth/android/SocialAuthAdapter$UploadImageTask;
.super Landroid/os/AsyncTask;
.source "SocialAuthAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brickred/socialauth/android/SocialAuthAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field listener:Lorg/brickred/socialauth/android/SocialAuthListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/brickred/socialauth/android/SocialAuthListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;


# direct methods
.method private constructor <init>(Lorg/brickred/socialauth/android/SocialAuthAdapter;Lorg/brickred/socialauth/android/SocialAuthListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/brickred/socialauth/android/SocialAuthListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1334
    .local p2, "listener":Lorg/brickred/socialauth/android/SocialAuthListener;, "Lorg/brickred/socialauth/android/SocialAuthListener<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$UploadImageTask;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1335
    iput-object p2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$UploadImageTask;->listener:Lorg/brickred/socialauth/android/SocialAuthListener;

    .line 1336
    return-void
.end method

.method synthetic constructor <init>(Lorg/brickred/socialauth/android/SocialAuthAdapter;Lorg/brickred/socialauth/android/SocialAuthListener;Lorg/brickred/socialauth/android/SocialAuthAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/brickred/socialauth/android/SocialAuthAdapter;
    .param p2, "x1"    # Lorg/brickred/socialauth/android/SocialAuthListener;
    .param p3, "x2"    # Lorg/brickred/socialauth/android/SocialAuthAdapter$1;

    .prologue
    .line 1330
    invoke-direct {p0, p1, p2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$UploadImageTask;-><init>(Lorg/brickred/socialauth/android/SocialAuthAdapter;Lorg/brickred/socialauth/android/SocialAuthListener;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1340
    const/4 v1, 0x0

    .line 1342
    .local v1, "res":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    const-string v2, "SocialAuthAdapter"

    const-string v3, "Image Uploading..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$UploadImageTask;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->getCurrentProvider()Lorg/brickred/socialauth/AuthProvider;

    move-result-object v5

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, p1, v4

    check-cast v4, Ljava/io/InputStream;

    invoke-interface {v5, v2, v3, v4}, Lorg/brickred/socialauth/AuthProvider;->uploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/brickred/socialauth/util/Response;

    move-result-object v1

    .line 1344
    const-string v2, "SocialAuthAdapter"

    const-string v3, "Image Uploaded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    invoke-virtual {v1}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1348
    :goto_0
    return-object v2

    .line 1346
    :catch_0
    move-exception v0

    .line 1347
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$UploadImageTask;->listener:Lorg/brickred/socialauth/android/SocialAuthListener;

    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthError;

    const-string v4, "Image Upload Error"

    invoke-direct {v3, v4, v0}, Lorg/brickred/socialauth/android/SocialAuthError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {v2, v3}, Lorg/brickred/socialauth/android/SocialAuthListener;->onError(Lorg/brickred/socialauth/android/SocialAuthError;)V

    .line 1348
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1330
    invoke-virtual {p0, p1}, Lorg/brickred/socialauth/android/SocialAuthAdapter$UploadImageTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "status"    # Ljava/lang/Integer;

    .prologue
    .line 1355
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$UploadImageTask;->listener:Lorg/brickred/socialauth/android/SocialAuthListener;

    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$UploadImageTask;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-virtual {v1}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->getCurrentProvider()Lorg/brickred/socialauth/AuthProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/brickred/socialauth/AuthProvider;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/brickred/socialauth/android/SocialAuthListener;->onExecute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1356
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1330
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/brickred/socialauth/android/SocialAuthAdapter$UploadImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
