.class final Lsun/nio/ch/Net$1;
.super Ljava/lang/Object;
.source "Net.java"

# interfaces
.implements Ljava/net/ProtocolFamily;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/Net;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "UNSPEC"

    return-object v0
.end method