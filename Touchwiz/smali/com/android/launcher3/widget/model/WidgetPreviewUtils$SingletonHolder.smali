.class Lcom/android/launcher3/widget/model/WidgetPreviewUtils$SingletonHolder;
.super Ljava/lang/Object;
.source "WidgetPreviewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/model/WidgetPreviewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sWidgetPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;-><init>(Lcom/android/launcher3/widget/model/WidgetPreviewUtils$1;)V

    sput-object v0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils$SingletonHolder;->sWidgetPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/launcher3/widget/model/WidgetPreviewUtils;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils$SingletonHolder;->sWidgetPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    return-object v0
.end method
