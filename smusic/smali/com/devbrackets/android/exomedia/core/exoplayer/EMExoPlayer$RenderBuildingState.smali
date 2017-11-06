.class public final enum Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;
.super Ljava/lang/Enum;
.source "EMExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderBuildingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

.field public static final enum BUILDING:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

.field public static final enum BUILT:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

.field public static final enum IDLE:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->IDLE:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    .line 103
    new-instance v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    const-string v1, "BUILDING"

    invoke-direct {v0, v1, v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->BUILDING:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    .line 104
    new-instance v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    const-string v1, "BUILT"

    invoke-direct {v0, v1, v4}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->BUILT:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->IDLE:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->BUILDING:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->BUILT:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->$VALUES:[Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    return-object v0
.end method

.method public static values()[Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->$VALUES:[Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    invoke-virtual {v0}, [Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer$RenderBuildingState;

    return-object v0
.end method
