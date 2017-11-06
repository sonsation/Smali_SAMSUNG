.class public Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;
.super Ljava/lang/Object;
.source "TestInformationReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/TestInformationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestInformation"
.end annotation


# static fields
.field public static final TYPE_SETUP:Ljava/lang/String; = "setup"

.field public static final TYPE_TEARDOWN:Ljava/lang/String; = "teardown"


# instance fields
.field private content:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->type:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->content:Ljava/util/Map;

    .line 81
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->type:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->content:Ljava/util/Map;

    .line 83
    return-void
.end method


# virtual methods
.method public getContent()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->content:Ljava/util/Map;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->content:Ljava/util/Map;

    .line 99
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->type:Ljava/lang/String;

    .line 91
    return-void
.end method
