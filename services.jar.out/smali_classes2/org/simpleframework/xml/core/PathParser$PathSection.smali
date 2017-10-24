.class Lorg/simpleframework/xml/core/PathParser$PathSection;
.super Ljava/lang/Object;
.source "PathParser.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Expression;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PathSection"
.end annotation


# instance fields
.field private begin:I

.field private cache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private end:I

.field private path:Ljava/lang/String;

.field private section:Ljava/lang/String;

.field final synthetic this$0:Lorg/simpleframework/xml/core/PathParser;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/PathParser;II)V
    .locals 1

    .prologue
    .line 816
    iput-object p1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->cache:Ljava/util/List;

    .line 818
    iput p2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    .line 819
    iput p3, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    .line 820
    return-void
.end method

.method private getCanonicalPath()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2f

    const/4 v0, 0x0

    move v1, v0

    .line 1025
    :goto_0
    iget v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    if-lt v0, v2, :cond_0

    move v2, v1

    .line 1028
    :goto_1
    iget v3, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    if-le v0, v3, :cond_1

    .line 1034
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v0, v0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1026
    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v2, v2, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1025
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1029
    :cond_1
    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v3, v3, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    .line 1030
    if-eq v2, v3, :cond_2

    .line 1028
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1031
    :cond_2
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v2, v2, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_2
.end method

.method private getFragment()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1045
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget v2, v1, Lorg/simpleframework/xml/core/PathParser;->start:I

    move v1, v0

    move v3, v2

    .line 1048
    :goto_0
    iget v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    if-le v0, v2, :cond_0

    .line 1059
    :goto_1
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v2, v2, Lorg/simpleframework/xml/core/PathParser;->data:[C

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 1049
    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget v2, v2, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-ge v3, v2, :cond_1

    .line 1053
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v4, v2, Lorg/simpleframework/xml/core/PathParser;->data:[C

    add-int/lit8 v2, v3, 0x1

    aget-char v3, v4, v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_2

    move v3, v2

    goto :goto_0

    .line 1050
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1054
    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    if-eq v0, v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v1, v2

    move v3, v2

    .line 1055
    goto :goto_0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 904
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/PathParser$PathSection;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 906
    if-nez v0, :cond_0

    .line 909
    return-object p1

    .line 907
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    invoke-virtual {v1, v0, p1}, Lorg/simpleframework/xml/core/PathParser;->getAttributePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 885
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/PathParser$PathSection;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 887
    if-nez v0, :cond_0

    .line 890
    return-object p1

    .line 888
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    invoke-virtual {v1, v0, p1}, Lorg/simpleframework/xml/core/PathParser;->getElementPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/String;
    .locals 2

    .prologue
    .line 945
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v0, v0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v0, v0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLast()Ljava/lang/String;
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v0, v0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->section:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 871
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->section:Ljava/lang/String;

    return-object v0

    .line 869
    :cond_0
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser$PathSection;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->section:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPath(I)Lorg/simpleframework/xml/core/Expression;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 972
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/PathParser$PathSection;->getPath(II)Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    return-object v0
.end method

.method public getPath(II)Lorg/simpleframework/xml/core/Expression;
    .locals 4

    .prologue
    .line 988
    new-instance v0, Lorg/simpleframework/xml/core/PathParser$PathSection;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    add-int/2addr v2, p1

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    sub-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/PathParser$PathSection;-><init>(Lorg/simpleframework/xml/core/PathParser;II)V

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v0, v0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isAttribute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 853
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-boolean v1, v1, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    if-nez v1, :cond_0

    .line 856
    return v0

    .line 854
    :cond_0
    iget v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v2, v2, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 830
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPath()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 841
    iget v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1000
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->cache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1009
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->cache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1001
    :cond_1
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    move v1, v0

    :goto_0
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    if-gt v1, v0, :cond_0

    .line 1002
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v0, v0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1004
    if-nez v0, :cond_2

    .line 1001
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1005
    :cond_2
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->cache:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1073
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->path:Ljava/lang/String;

    return-object v0

    .line 1071
    :cond_0
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser$PathSection;->getFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->path:Ljava/lang/String;

    goto :goto_0
.end method
