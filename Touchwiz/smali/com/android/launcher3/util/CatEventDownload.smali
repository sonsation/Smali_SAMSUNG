.class public Lcom/android/launcher3/util/CatEventDownload;
.super Ljava/lang/Object;
.source "CatEventDownload.java"


# static fields
.field public static final EVENT_IDLE_SCREEN_AVAILABLE:I = 0x5

.field public static final STK_EVENT_ACTION:Ljava/lang/String; = "com.samsung.intent.action.stk.event"

.field private static sClass:Ljava/lang/Class;


# instance fields
.field private instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    sput-object v2, Lcom/android/launcher3/util/CatEventDownload;->sClass:Ljava/lang/Class;

    .line 34
    :try_start_0
    const-string v1, "com.android.internal.telephony.cat.CatEventDownload"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/util/CatEventDownload;->sClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 35
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 36
    .restart local v0    # "e":Ljava/lang/Exception;
    sput-object v2, Lcom/android/launcher3/util/CatEventDownload;->sClass:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/util/CatEventDownload;->instance:Ljava/lang/Object;

    .line 41
    sget-object v2, Lcom/android/launcher3/util/CatEventDownload;->sClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 43
    :try_start_0
    sget-object v2, Lcom/android/launcher3/util/CatEventDownload;->sClass:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 44
    .local v0, "con":Ljava/lang/reflect/Constructor;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/util/CatEventDownload;->instance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "con":Ljava/lang/reflect/Constructor;
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public putExtra(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/launcher3/util/CatEventDownload;->instance:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/util/CatEventDownload;->instance:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    :cond_0
    return-void
.end method
