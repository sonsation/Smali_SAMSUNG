.class Lcom/mods/grx/views/GrxImageView$ImageLoader;
.super Landroid/os/AsyncTask;
.source "GrxImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mods/grx/views/GrxImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/mods/grx/views/GrxImageView;


# direct methods
.method private constructor <init>(Lcom/mods/grx/views/GrxImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/mods/grx/views/GrxImageView$ImageLoader;->this$0:Lcom/mods/grx/views/GrxImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mods/grx/views/GrxImageView;Lcom/mods/grx/views/GrxImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mods/grx/views/GrxImageView$ImageLoader;-><init>(Lcom/mods/grx/views/GrxImageView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/mods/grx/views/GrxImageView$ImageLoader;->this$0:Lcom/mods/grx/views/GrxImageView;

    invoke-static {v0}, Lcom/mods/grx/views/GrxImageView;->access$100(Lcom/mods/grx/views/GrxImageView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mods/grx/views/GrxImageView$ImageLoader;->this$0:Lcom/mods/grx/views/GrxImageView;

    invoke-static {v0}, Lcom/mods/grx/views/GrxImageView;->access$100(Lcom/mods/grx/views/GrxImageView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/mods/grx/views/GrxImageView$ImageLoader;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/mods/grx/views/GrxImageView$ImageLoader;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mods/grx/views/GrxImageView$ImageLoader;->this$0:Lcom/mods/grx/views/GrxImageView;

    invoke-static {v1}, Lcom/mods/grx/views/GrxImageView;->access$100(Lcom/mods/grx/views/GrxImageView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mods/grx/views/GrxImageView$ImageLoader;->this$0:Lcom/mods/grx/views/GrxImageView;

    invoke-static {v2}, Lcom/mods/grx/views/GrxImageView;->access$200(Lcom/mods/grx/views/GrxImageView;)F

    move-result v2

    iget-object v3, p0, Lcom/mods/grx/views/GrxImageView$ImageLoader;->this$0:Lcom/mods/grx/views/GrxImageView;

    invoke-static {v3}, Lcom/mods/grx/views/GrxImageView;->access$300(Lcom/mods/grx/views/GrxImageView;)F

    move-result v3

    iget-object v4, p0, Lcom/mods/grx/views/GrxImageView$ImageLoader;->this$0:Lcom/mods/grx/views/GrxImageView;

    invoke-static {v4}, Lcom/mods/grx/views/GrxImageView;->access$400(Lcom/mods/grx/views/GrxImageView;)I

    move-result v4

    iget-object v5, p0, Lcom/mods/grx/views/GrxImageView$ImageLoader;->this$0:Lcom/mods/grx/views/GrxImageView;

    invoke-static {v5}, Lcom/mods/grx/views/GrxImageView;->access$500(Lcom/mods/grx/views/GrxImageView;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/mods/grx/Utils;->get_blur_bitmap_from_uri_string(Landroid/content/Context;Ljava/lang/String;FFII)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_0
    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mods/grx/views/GrxImageView$ImageLoader;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/mods/grx/views/GrxImageView$ImageLoader;->this$0:Lcom/mods/grx/views/GrxImageView;

    invoke-virtual {v0, p1}, Lcom/mods/grx/views/GrxImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/mods/grx/views/GrxImageView$ImageLoader;->this$0:Lcom/mods/grx/views/GrxImageView;

    iget-boolean v0, v0, Lcom/mods/grx/views/GrxImageView;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mods/grx/views/GrxImageView$ImageLoader;->this$0:Lcom/mods/grx/views/GrxImageView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string v0, "IMAGE IS NULL"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mods/grx/views/GrxImageView;->access$600(Lcom/mods/grx/views/GrxImageView;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "IMAGE IS NOT NULL"

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/mods/grx/views/GrxImageView$ImageLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
