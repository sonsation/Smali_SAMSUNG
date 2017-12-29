.class public Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
.super Ljava/lang/Object;
.source "XMLUtil.java"

# interfaces
.implements Lorg/simpleframework/xml/convert/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rlc/util/XMLUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyElementConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/convert/Converter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/rlc/util/XMLUtil;


# direct methods
.method public constructor <init>(Lcom/samsung/android/rlc/util/XMLUtil;)V
    .locals 0

    .prologue
    .line 74
    .local p0, "this":Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;, "Lcom/samsung/android/rlc/util/XMLUtil<TT;>.EmptyElementConverter;"
    .local p1, "this$0":Lcom/samsung/android/rlc/util/XMLUtil;, "Lcom/samsung/android/rlc/util/XMLUtil<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;->this$0:Lcom/samsung/android/rlc/util/XMLUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 1
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;, "Lcom/samsung/android/rlc/util/XMLUtil<TT;>.EmptyElementConverter;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/String;
    .locals 1
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;, "Lcom/samsung/android/rlc/util/XMLUtil<TT;>.EmptyElementConverter;"
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 81
    :cond_0
    return-object v0
.end method

.method public bridge synthetic write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 0
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;, "Lcom/samsung/android/rlc/util/XMLUtil<TT;>.EmptyElementConverter;"
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)V

    return-void
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;, "Lcom/samsung/android/rlc/util/XMLUtil<TT;>.EmptyElementConverter;"
    if-nez p2, :cond_0

    const-string p2, ""

    .line 87
    :cond_0
    invoke-interface {p1, p2}, Lorg/simpleframework/xml/stream/OutputNode;->setValue(Ljava/lang/String;)V

    .line 85
    return-void
.end method
