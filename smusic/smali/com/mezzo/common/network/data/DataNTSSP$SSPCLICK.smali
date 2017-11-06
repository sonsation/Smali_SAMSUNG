.class public Lcom/mezzo/common/network/data/DataNTSSP$SSPCLICK;
.super Ljava/lang/Object;
.source "DataNTSSP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mezzo/common/network/data/DataNTSSP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SSPCLICK"
.end annotation


# static fields
.field public static NO:Ljava/lang/String;

.field public static YES:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "1"

    sput-object v0, Lcom/mezzo/common/network/data/DataNTSSP$SSPCLICK;->YES:Ljava/lang/String;

    .line 13
    const-string v0, "0"

    sput-object v0, Lcom/mezzo/common/network/data/DataNTSSP$SSPCLICK;->NO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
