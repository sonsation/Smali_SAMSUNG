.class public final enum Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;
.super Ljava/lang/Enum;
.source "WatermarkTemplateLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

.field public static final enum CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

.field public static final enum LEFT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

.field public static final enum LEFT_TOP:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

.field public static final enum RIGHT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

.field public static final enum RIGHT_TOP:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

.field public static final enum USER_DEFINE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const-string v1, "USER_DEFINE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->USER_DEFINE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const-string v1, "LEFT_TOP"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->LEFT_TOP:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const-string v1, "RIGHT_TOP"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_TOP:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const-string v1, "LEFT_BOTTOM"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->LEFT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const-string v1, "RIGHT_BOTTOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->USER_DEFINE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->LEFT_TOP:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_TOP:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->LEFT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->$VALUES:[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->$VALUES:[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    return-object v0
.end method
