.class Lcom/dawin/objects/c$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/objects/c;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/objects/c;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dawin/objects/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/dawin/objects/c$5;->a:Lcom/dawin/objects/c;

    iput-object p2, p0, Lcom/dawin/objects/c$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/dawin/objects/c$5;->a:Lcom/dawin/objects/c;

    invoke-static {v1}, Lcom/dawin/objects/c;->c(Lcom/dawin/objects/c;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/dawin/objects/c$5;->a:Lcom/dawin/objects/c;

    invoke-static {v2}, Lcom/dawin/objects/c;->b(Lcom/dawin/objects/c;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dawin/objects/c$5;->a:Lcom/dawin/objects/c;

    iget-object v2, v2, Lcom/dawin/objects/c;->b:Lcom/dawin/objects/b;

    iget-object v3, p0, Lcom/dawin/objects/c$5;->a:Lcom/dawin/objects/c;

    invoke-static {v3}, Lcom/dawin/objects/c;->d(Lcom/dawin/objects/c;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xa

    iget-object v5, p0, Lcom/dawin/objects/c$5;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/dawin/objects/b;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
