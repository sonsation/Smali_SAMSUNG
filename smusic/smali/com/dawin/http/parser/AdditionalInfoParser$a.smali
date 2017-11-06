.class public Lcom/dawin/http/parser/AdditionalInfoParser$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dawin/http/parser/AdditionalInfoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/http/parser/AdditionalInfoParser;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dawin/http/parser/AdditionalInfoParser;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "_program"    # Ljava/lang/String;
    .param p3, "_position"    # I
    .param p4, "_sizePercent"    # I
    .param p5, "_startViewSec"    # I
    .param p6, "_endViewSec"    # I
    .param p7, "_imageUrl"    # Ljava/lang/String;
    .param p8, "_clickThrough"    # Ljava/lang/String;
    .param p9, "_clickTracking"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->a:Lcom/dawin/http/parser/AdditionalInfoParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->b:Ljava/lang/String;

    iput v2, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->c:I

    iput v2, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->d:I

    iput v1, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->e:I

    iput v1, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->c:I

    iput p4, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->d:I

    mul-int/lit16 v0, p5, 0x3e8

    iput v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->e:I

    mul-int/lit16 v0, p6, 0x3e8

    iput v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->f:I

    iput-object p7, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->f:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser$a;->i:Ljava/lang/String;

    return-object v0
.end method
