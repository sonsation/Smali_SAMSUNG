.class Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache$GLAdapterBitmapCache2Holder;
.super Ljava/lang/Object;
.source "GLAdapterBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLAdapterBitmapCache2Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache$GLAdapterBitmapCache2Holder;->sInstance:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache$GLAdapterBitmapCache2Holder;->sInstance:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;

    return-object v0
.end method
