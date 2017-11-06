.class Lcom/dawin/DawinVideoAd$22;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/DawinVideoAd;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/DawinVideoAd;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dawin/DawinVideoAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/dawin/DawinVideoAd$22;->a:Lcom/dawin/DawinVideoAd;

    iput-object p2, p0, Lcom/dawin/DawinVideoAd$22;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dawin/DawinVideoAd$22;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd$22;)Lcom/dawin/DawinVideoAd;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$22;->a:Lcom/dawin/DawinVideoAd;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$22;->a:Lcom/dawin/DawinVideoAd;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;Z)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$22;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$22;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v0

    const-string v2, "Action"

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$22;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdClickThru(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$22;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v0

    const/16 v2, 0x7d0

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$22;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&pt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$22;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->P(Lcom/dawin/DawinVideoAd;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&dawin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "A01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$22;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->q(Lcom/dawin/DawinVideoAd;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$22;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/dawin/util/CommonUtils;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$22;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->q(Lcom/dawin/DawinVideoAd;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "\uc804\ud654 \uae30\ub2a5\uc744 \uc774\uc6a9\ud560 \uc218 \uc5c6\ub294 \uc0c1\ud0dc\uc785\ub2c8\ub2e4."

    const-string/jumbo v3, "\ud655\uc778"

    new-instance v5, Lcom/dawin/DawinVideoAd$22$1;

    invoke-direct {v5, p0}, Lcom/dawin/DawinVideoAd$22$1;-><init>(Lcom/dawin/DawinVideoAd$22;)V

    move-object v4, v1

    move-object v6, v1

    invoke-static/range {v0 .. v6}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v7

    .local v7, "callDialog":Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    const v0, 0x102000b

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .local v9, "msg":Landroid/widget/TextView;
    const/16 v0, 0x11

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method
