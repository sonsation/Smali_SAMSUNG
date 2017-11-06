.class Lorg/simpleframework/xml/stream/DocumentReader$End;
.super Lorg/simpleframework/xml/stream/EventToken;
.source "DocumentReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/stream/DocumentReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "End"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventToken;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/stream/DocumentReader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/simpleframework/xml/stream/DocumentReader$1;

    .prologue
    .line 523
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/DocumentReader$End;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnd()Z
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x1

    return v0
.end method
