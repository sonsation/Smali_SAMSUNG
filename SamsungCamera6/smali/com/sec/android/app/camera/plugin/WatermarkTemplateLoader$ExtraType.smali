.class public final enum Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;
.super Ljava/lang/Enum;
.source "WatermarkTemplateLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtraType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

.field public static final enum EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

.field public static final enum EXTRA_UPDATE_MINUTES:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const-string v1, "EXTRA_COMMON"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const-string v1, "EXTRA_UPDATE_MINUTES"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_UPDATE_MINUTES:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_UPDATE_MINUTES:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->$VALUES:[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->$VALUES:[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    return-object v0
.end method
