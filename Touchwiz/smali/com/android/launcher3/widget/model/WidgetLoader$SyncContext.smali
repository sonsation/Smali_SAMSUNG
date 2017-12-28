.class Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;
.super Ljava/lang/Object;
.source "WidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/model/WidgetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncContext"
.end annotation


# instance fields
.field public hasUninstallApp:Z

.field public stopped:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->hasUninstallApp:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->stopped:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/widget/model/WidgetLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/widget/model/WidgetLoader$1;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->hasUninstallApp:Z

    .line 129
    iput-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->stopped:Z

    .line 130
    return-void
.end method
