.class public final Lcom/samsung/android/sdk/accessory/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/accessory/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/accessory/j;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/k;->i:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/k;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/k;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/accessory/k;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/accessory/k;->e:Ljava/lang/String;

    iput p7, p0, Lcom/samsung/android/sdk/accessory/k;->g:I

    iput p8, p0, Lcom/samsung/android/sdk/accessory/k;->h:I

    iput-object p9, p0, Lcom/samsung/android/sdk/accessory/k;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/accessory/k;->g:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/accessory/k;->h:I

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/accessory/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/k;->i:Ljava/util/List;

    return-object v0
.end method
