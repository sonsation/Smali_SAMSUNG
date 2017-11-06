.class public final enum Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;
.super Ljava/lang/Enum;
.source "TextureVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

.field public static final enum COMPLETED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

.field public static final enum ERROR:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

.field public static final enum IDLE:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

.field public static final enum PAUSED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

.field public static final enum PLAYING:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

.field public static final enum PREPARED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

.field public static final enum PREPARING:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->ERROR:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 53
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 54
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v5}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PREPARING:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 55
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v6}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PREPARED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 56
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v7}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PLAYING:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 57
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    const-string v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PAUSED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 58
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    const-string v1, "COMPLETED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->COMPLETED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 51
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->ERROR:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PREPARING:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PREPARED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PLAYING:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PAUSED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->COMPLETED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->$VALUES:[Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    return-object v0
.end method

.method public static values()[Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->$VALUES:[Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    invoke-virtual {v0}, [Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    return-object v0
.end method
