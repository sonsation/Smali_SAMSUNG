.class Lcom/dawin/util/a$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dawin/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/dawin/util/a$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dawin/util/a$c;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adInfoListener"    # Lcom/dawin/util/a$c;

    .prologue
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dawin/util/a$b;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dawin/util/a$b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 8
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v0, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/dawin/util/a$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .end local v1    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .restart local v1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v5, Lcom/dawin/util/h$a;

    const/4 v6, 0x0

    const-string v7, "getAdvertisingIdInfo"

    invoke-direct {v5, v6, v7}, Lcom/dawin/util/h$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/dawin/util/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/dawin/util/h$a;->a(Ljava/lang/Class;)Lcom/dawin/util/h$a;

    move-result-object v5

    const-class v6, Landroid/content/Context;

    invoke-virtual {v5, v6, v1}, Lcom/dawin/util/h$a;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/dawin/util/h$a;

    move-result-object v4

    .local v4, "methodBuilder":Lcom/dawin/util/h$a;
    invoke-virtual {v4}, Lcom/dawin/util/h$a;->a()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "adInfo":Ljava/lang/Object;
    goto :goto_0

    .end local v0    # "adInfo":Ljava/lang/Object;
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "methodBuilder":Lcom/dawin/util/h$a;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_1
    iget-object v5, p0, Lcom/dawin/util/a$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lcom/dawin/util/GooglePlayAdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/dawin/util/GooglePlayAdvertisingIdClient$AdInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v3

    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dawin/util/a$b;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .param p1, "adInfo"    # Ljava/lang/Object;

    .prologue
    const-string v3, ""

    invoke-static {p1, v3}, Lcom/dawin/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "advertisingId":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/dawin/util/a;->a(Ljava/lang/Object;Z)Z

    move-result v2

    .local v2, "isLimitAdTrackingEnabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onPostExecute : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dawin/util/a$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dawin/util/a$c;

    .local v0, "adInfoListener":Lcom/dawin/util/a$c;
    if-eqz v0, :cond_0

    new-instance v4, Lcom/dawin/util/a$a;

    if-eqz v2, :cond_1

    const-string v3, "n"

    :goto_0
    invoke-direct {v4, v1, v3}, Lcom/dawin/util/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/dawin/util/a$c;->a(Lcom/dawin/util/a$a;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v3, "y"

    goto :goto_0
.end method
