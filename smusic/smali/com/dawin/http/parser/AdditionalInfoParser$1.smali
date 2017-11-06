.class Lcom/dawin/http/parser/AdditionalInfoParser$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/http/parser/AdditionalInfoParser;->initTickerInfo(Lorg/w3c/dom/NodeList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dawin/http/parser/AdditionalInfoParser$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/http/parser/AdditionalInfoParser;

.field private final b:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/dawin/http/parser/AdditionalInfoParser;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/dawin/http/parser/AdditionalInfoParser$1;->a:Lcom/dawin/http/parser/AdditionalInfoParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser$1;->b:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/dawin/http/parser/AdditionalInfoParser$a;Lcom/dawin/http/parser/AdditionalInfoParser$a;)I
    .locals 12
    .param p1, "lhs"    # Lcom/dawin/http/parser/AdditionalInfoParser$a;
    .param p2, "rhs"    # Lcom/dawin/http/parser/AdditionalInfoParser$a;

    .prologue
    invoke-virtual {p2}, Lcom/dawin/http/parser/AdditionalInfoParser$a;->d()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "startTime1":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/dawin/http/parser/AdditionalInfoParser$a;->d()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "startTime2":Ljava/lang/String;
    const-string v6, ""

    .local v6, "tmp1":Ljava/lang/String;
    const-string v7, ""

    .local v7, "tmp2":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length1":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length2":I
    if-eq v2, v3, :cond_0

    if-le v2, v3, :cond_2

    sub-int v0, v2, v3

    .local v0, "gap":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .end local v0    # "gap":I
    .end local v1    # "i":I
    :cond_0
    iget-object v8, p0, Lcom/dawin/http/parser/AdditionalInfoParser$1;->b:Ljava/text/Collator;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    return v8

    .restart local v0    # "gap":I
    .restart local v1    # "i":I
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "gap":I
    .end local v1    # "i":I
    :cond_2
    sub-int v0, v3, v2

    .restart local v0    # "gap":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/dawin/http/parser/AdditionalInfoParser$a;

    check-cast p2, Lcom/dawin/http/parser/AdditionalInfoParser$a;

    invoke-virtual {p0, p1, p2}, Lcom/dawin/http/parser/AdditionalInfoParser$1;->a(Lcom/dawin/http/parser/AdditionalInfoParser$a;Lcom/dawin/http/parser/AdditionalInfoParser$a;)I

    move-result v0

    return v0
.end method
