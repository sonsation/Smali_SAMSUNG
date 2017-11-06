.class public final enum Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;
.super Ljava/lang/Enum;
.source "NoNetworkLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoNetworkMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

.field public static final enum CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

.field public static final enum ENTERED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    const-string v1, "ENTERED"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->ENTERED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    const-string v1, "CACHED"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    .line 162
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->ENTERED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->$VALUES:[Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

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
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    const-class v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->$VALUES:[Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    return-object v0
.end method
