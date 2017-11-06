.class final Lcom/samsung/accessory/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to configure the Pool!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/accessory/a/a/e;->a:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/accessory/a/a/e;->b:I

    const/high16 v0, 0x200000

    iput v0, p0, Lcom/samsung/accessory/a/a/e;->c:I

    return-void
.end method
