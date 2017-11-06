.class public final Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;
.super Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;
.source "HomeScreenWidgetUpdateHelper.java"


# static fields
.field private static final sInstance:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;

    invoke-direct {v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->sInstance:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 17
    const-class v0, Lcom/sec/android/app/music/appwidget/MusicAppWidgetProvider;

    const-class v1, Lcom/samsung/android/app/music/appwidget/WidgetListService;

    const v2, 0x7f12058e

    const v3, 0x7f120196

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;-><init>(Ljava/lang/Class;Ljava/lang/Class;II)V

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->sInstance:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;

    return-object v0
.end method


# virtual methods
.method public updateWidget()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->updateWidget()V

    .line 23
    return-void
.end method
