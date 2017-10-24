.class public Lcom/samsung/voicebargein/BargeInEngine;
.super Ljava/lang/Object;
.source "BargeInEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/samsung/voicebargein/BargeInEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()I
    .locals 5

    .prologue
    .line 21
    const/4 v2, 0x0

    .line 24
    .local v2, "nResult":I
    :try_start_0
    sget-object v3, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Trying to load libBargeInEngine.so"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string/jumbo v3, "BargeInEngine"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    sget-object v3, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Loading libBargeInEngine.so"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return v2

    .line 33
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "WARNING: Could not load libBargeInEngine.so"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v2, -0x1

    goto :goto_0

    .line 28
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 30
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v3, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "WARNING: Could not load libBargeInEngine.so"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public asyncPrint(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 15
    return-void
.end method

.method public native phrasespotClose(J)V
.end method

.method public native phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native phrasespotPipe(J[SJJ[F)Ljava/lang/String;
.end method
