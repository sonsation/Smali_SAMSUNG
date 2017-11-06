.class Lcom/dawin/objects/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/util/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/objects/b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/objects/b;


# direct methods
.method constructor <init>(Lcom/dawin/objects/b;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setBitmap Text Image onBitmapDownloadFinished : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v3, v2}, Lcom/dawin/objects/b;->a(Lcom/dawin/objects/b;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    iget-object v3, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v3}, Lcom/dawin/objects/b;->b(Lcom/dawin/objects/b;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v5}, Lcom/dawin/objects/b;->d(Lcom/dawin/objects/b;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v6}, Lcom/dawin/objects/b;->e(Lcom/dawin/objects/b;)I

    move-result v6

    iget-object v7, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v7}, Lcom/dawin/objects/b;->d(Lcom/dawin/objects/b;)I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dawin/objects/b;->b(Lcom/dawin/objects/b;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    iget-object v3, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v3}, Lcom/dawin/objects/b;->b(Lcom/dawin/objects/b;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v5}, Lcom/dawin/objects/b;->d(Lcom/dawin/objects/b;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v6}, Lcom/dawin/objects/b;->f(Lcom/dawin/objects/b;)I

    move-result v6

    iget-object v7, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v7}, Lcom/dawin/objects/b;->d(Lcom/dawin/objects/b;)I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dawin/objects/b;->c(Lcom/dawin/objects/b;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    iget-object v3, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v3}, Lcom/dawin/objects/b;->b(Lcom/dawin/objects/b;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v5}, Lcom/dawin/objects/b;->d(Lcom/dawin/objects/b;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    iget-object v6, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v6}, Lcom/dawin/objects/b;->g(Lcom/dawin/objects/b;)I

    move-result v6

    iget-object v7, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v7}, Lcom/dawin/objects/b;->d(Lcom/dawin/objects/b;)I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dawin/objects/b;->d(Lcom/dawin/objects/b;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .end local v1    # "i":I
    :cond_0
    :goto_3
    return-void

    .restart local v1    # "i":I
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v2}, Lcom/dawin/objects/b;->a(Lcom/dawin/objects/b;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v3}, Lcom/dawin/objects/b;->b(Lcom/dawin/objects/b;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v4}, Lcom/dawin/objects/b;->c(Lcom/dawin/objects/b;)I

    move-result v4

    mul-int/2addr v4, v1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v6}, Lcom/dawin/objects/b;->c(Lcom/dawin/objects/b;)I

    move-result v6

    iget-object v7, p0, Lcom/dawin/objects/b$1;->a:Lcom/dawin/objects/b;

    invoke-static {v7}, Lcom/dawin/objects/b;->d(Lcom/dawin/objects/b;)I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
