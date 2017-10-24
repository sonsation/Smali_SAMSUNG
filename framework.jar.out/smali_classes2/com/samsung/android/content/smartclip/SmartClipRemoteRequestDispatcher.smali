.class public Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;
.super Ljava/lang/Object;
.source "SmartClipRemoteRequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;
    }
.end annotation


# static fields
.field private static final KEY_AIR_COMMAND_HIT_TEST_RESULT:Ljava/lang/String; = "result"

.field private static final KEY_EVENT_INJECTION_EVENTS:Ljava/lang/String; = "events"

.field private static final KEY_EVENT_INJECTION_WAIT_UNTIL_CONSUME:Ljava/lang/String; = "waitUntilConsume"

.field private static final KEY_SCROLLABLE_AREA_INFO_ACTIVITY_NAME:Ljava/lang/String; = "activityName"

.field private static final KEY_SCROLLABLE_AREA_INFO_DISPLAY_FRAME:Ljava/lang/String; = "displayFrame"

.field private static final KEY_SCROLLABLE_AREA_INFO_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final KEY_SCROLLABLE_AREA_INFO_SCROLLABLE_VIEWS:Ljava/lang/String; = "scrollableViews"

.field private static final KEY_SCROLLABLE_AREA_INFO_UNSCROLLABLE_VIEWS:Ljava/lang/String; = "unscrollableViews"

.field private static final KEY_SCROLLABLE_AREA_INFO_VISIBLE_DISPLAY_FRAME:Ljava/lang/String; = "visibleDisplayFrame"

.field private static final KEY_SCROLLABLE_AREA_INFO_WINDOW_LAYER:Ljava/lang/String; = "windowLayer"

.field private static final KEY_SCROLLABLE_AREA_INFO_WINDOW_RECT:Ljava/lang/String; = "windowRect"

.field private static final KEY_SCROLLABLE_VIEW_INFO_CHILD_VIEWS:Ljava/lang/String; = "childViews"

.field private static final KEY_SCROLLABLE_VIEW_INFO_TARGET_VIEW:Ljava/lang/String; = "targetView"

.field private static final KEY_VIEW_INFO_HASHCODE:Ljava/lang/String; = "hashCode"

.field private static final KEY_VIEW_INFO_HIERARCHY:Ljava/lang/String; = "hierarchy"

.field private static final KEY_VIEW_INFO_SCREEN_RECT:Ljava/lang/String; = "screenRect"

.field public static final PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String; = "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

.field public static final PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String; = "android.permission.INJECT_EVENTS"

.field public static final TAG:Ljava/lang/String; = "SmartClipRemoteRequestDispatcher"


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mViewRootImplGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 0
    .param p1, "request"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->dispatchAirCommandHitTest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 0
    .param p1, "request"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->dispatchInputEventInjection(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 0
    .param p1, "request"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->dispatchScrollableAreaInfo(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 0
    .param p1, "request"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->dispatchScrollableViewInfo(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Landroid/view/InputEvent;Z)V
    .locals 0
    .param p1, "inputEvent"    # Landroid/view/InputEvent;
    .param p2, "processImmediately"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->enqueueInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "request"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    .param p2, "resultData"    # Landroid/os/Parcelable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->sendResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewRootImplGateway"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    .line 106
    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mViewRootImplGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    .line 108
    invoke-interface {p2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mHandler:Landroid/os/Handler;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 111
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 113
    const-string/jumbo v1, "com.samsung.android.smartclip.DEBUG"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    .line 105
    :cond_0
    return-void
.end method

.method private createViewInfoAsBundle(Landroid/view/View;)Landroid/os/Bundle;
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 395
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 397
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 398
    .local v3, "hashCode":I
    invoke-static {p1}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 399
    .local v4, "screenRectOfView":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->getViewHierarchyTable(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 401
    .local v5, "viewHierarchy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, "hashCode"

    invoke-virtual {v0, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 402
    const-string/jumbo v6, "screenRect"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 403
    const-string/jumbo v6, "hierarchy"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 405
    iget-boolean v6, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 406
    const-string/jumbo v6, "SmartClipRemoteRequestDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "createScrollableViewInfo : Scrollable view hash=@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / Rect="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "clsName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 408
    .local v1, "clsName":Ljava/lang/String;
    const-string/jumbo v6, "SmartClipRemoteRequestDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "createScrollableViewInfo :   + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    .end local v1    # "clsName":Ljava/lang/String;
    .end local v2    # "clsName$iterator":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method private dispatchAirCommandHitTest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 3
    .param p1, "request"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, "result":I
    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 388
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v1, "resultData":Landroid/os/Bundle;
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 390
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->sendResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V

    .line 353
    .end local v1    # "resultData":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private dispatchInputEventInjection(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 22
    .param p1, "request"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 183
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    if-eqz v3, :cond_b

    .line 184
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    instance-of v3, v3, Landroid/view/MotionEvent;

    if-eqz v3, :cond_4

    .line 185
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    check-cast v15, Landroid/view/MotionEvent;

    .line 186
    .local v15, "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->transformTouchPosition(Landroid/view/MotionEvent;)V

    .line 187
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 188
    .local v8, "action":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    if-nez v3, :cond_0

    if-nez v8, :cond_3

    .line 189
    :cond_0
    :goto_0
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v17, v0

    .line 190
    .local v17, "x":I
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v18, v0

    .line 191
    .local v18, "y":I
    const-string/jumbo v3, "SmartClipRemoteRequestDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "dispatchInputEventInjection : Touch event action="

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v8}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v19, " x="

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v19, " y="

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v17    # "x":I
    .end local v18    # "y":I
    :cond_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    check-cast v14, Landroid/view/InputEvent;

    .line 195
    .local v14, "inputEvent":Landroid/view/InputEvent;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->enqueueInputEvent(Landroid/view/InputEvent;Z)V

    .line 182
    .end local v8    # "action":I
    .end local v14    # "inputEvent":Landroid/view/InputEvent;
    .end local v15    # "motionEvent":Landroid/view/MotionEvent;
    :cond_2
    :goto_1
    return-void

    .line 188
    .restart local v8    # "action":I
    .restart local v15    # "motionEvent":Landroid/view/MotionEvent;
    :cond_3
    const/4 v3, 0x1

    if-eq v8, v3, :cond_0

    const/4 v3, 0x3

    if-ne v8, v3, :cond_1

    goto :goto_0

    .line 196
    .end local v8    # "action":I
    .end local v15    # "motionEvent":Landroid/view/MotionEvent;
    :cond_4
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 197
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 198
    .local v16, "reqData":Landroid/os/Bundle;
    const-string/jumbo v3, "events"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 199
    .local v5, "events":[Landroid/os/Parcelable;
    if-eqz v5, :cond_a

    .line 200
    const-string/jumbo v3, "waitUntilConsume"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 201
    .local v6, "waitUntilConsume":Z
    array-length v3, v5

    if-lez v3, :cond_6

    const/4 v3, 0x0

    aget-object v3, v5, v3

    check-cast v3, Landroid/view/InputEvent;

    invoke-virtual {v3}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v12

    .line 203
    .local v12, "firstEventTime":J
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 204
    const-string/jumbo v3, "SmartClipRemoteRequestDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "dispatchInputEventInjection : wait = "

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v19, "  eventCount="

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_5
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    array-length v3, v5

    if-ge v9, v3, :cond_2

    .line 208
    aget-object v4, v5, v9

    check-cast v4, Landroid/view/InputEvent;

    .line 209
    .local v4, "event":Landroid/view/InputEvent;
    if-nez v4, :cond_7

    .line 207
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 201
    .end local v4    # "event":Landroid/view/InputEvent;
    .end local v9    # "i":I
    .end local v12    # "firstEventTime":J
    :cond_6
    const-wide/16 v12, -0x1

    .restart local v12    # "firstEventTime":J
    goto :goto_2

    .line 213
    .restart local v4    # "event":Landroid/view/InputEvent;
    .restart local v9    # "i":I
    :cond_7
    instance-of v3, v4, Landroid/view/MotionEvent;

    if-eqz v3, :cond_8

    move-object v3, v4

    .line 214
    nop

    nop

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->transformTouchPosition(Landroid/view/MotionEvent;)V

    .line 217
    :cond_8
    new-instance v2, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;-><init>(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Landroid/view/InputEvent;[Landroid/os/Parcelable;ZLcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    .line 235
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-virtual {v4}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v20

    sub-long v10, v20, v12

    .line 236
    .local v10, "delay":J
    const-wide/16 v20, 0x0

    cmp-long v3, v10, v20

    if-lez v3, :cond_9

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 239
    :cond_9
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    .line 243
    .end local v2    # "runnable":Ljava/lang/Runnable;
    .end local v4    # "event":Landroid/view/InputEvent;
    .end local v6    # "waitUntilConsume":Z
    .end local v9    # "i":I
    .end local v10    # "delay":J
    .end local v12    # "firstEventTime":J
    :cond_a
    const-string/jumbo v3, "SmartClipRemoteRequestDispatcher"

    const-string/jumbo v7, "dispatchInputEventInjection : Event is null!"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 247
    .end local v5    # "events":[Landroid/os/Parcelable;
    .end local v16    # "reqData":Landroid/os/Bundle;
    :cond_b
    const-string/jumbo v3, "SmartClipRemoteRequestDispatcher"

    const-string/jumbo v7, "dispatchInputEventInjection : Empty input event!"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private dispatchScrollableAreaInfo(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 19
    .param p1, "request"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mViewRootImplGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 254
    .local v6, "rootView":Landroid/view/View;
    if-eqz v6, :cond_3

    .line 255
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v8, "scrollableViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v10, "unscrollableViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v6}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v15

    .line 259
    .local v15, "windowRect":Landroid/graphics/Rect;
    const-string/jumbo v16, "SmartClipRemoteRequestDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "dispatchScrollableAreaInfo : windowRect = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15, v8, v10}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->findScrollableViews(Landroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 263
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v5, "resultData":Landroid/os/Bundle;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v7, "scrollableViewInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "view$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 268
    .local v11, "view":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->createViewInfoAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v13

    .line 269
    .local v13, "viewInfo":Landroid/os/Bundle;
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    .end local v11    # "view":Landroid/view/View;
    .end local v13    # "viewInfo":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v16, "SmartClipRemoteRequestDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "dispatchScrollableAreaInfo : Scrollable view count = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string/jumbo v16, "scrollableViews"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 275
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v9, "unscrollableViewInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 277
    .restart local v11    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->createViewInfoAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v13

    .line 278
    .restart local v13    # "viewInfo":Landroid/os/Bundle;
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    .end local v11    # "view":Landroid/view/View;
    .end local v13    # "viewInfo":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v16, "SmartClipRemoteRequestDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "dispatchScrollableAreaInfo : Unscrollable view count = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string/jumbo v16, "unscrollableViews"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 284
    const-string/jumbo v16, "windowRect"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 285
    const-string/jumbo v16, "windowLayer"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mTargetWindowLayer:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 288
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 289
    .local v3, "displayFrame":Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 290
    .local v14, "visibleDisplayFrame":Landroid/graphics/Rect;
    invoke-virtual {v6, v3}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    .line 291
    invoke-virtual {v6, v14}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 292
    const-string/jumbo v16, "displayFrame"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 293
    const-string/jumbo v16, "visibleDisplayFrame"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, "pkgName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 298
    .local v2, "activityName":Ljava/lang/String;
    const-string/jumbo v16, "packageName"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "activityName":Ljava/lang/String;
    const-string/jumbo v16, "activityName"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .end local v2    # "activityName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v16, "SmartClipRemoteRequestDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "dispatchScrollableAreaInfo : Pkg="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " Activity="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->sendResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V

    .line 251
    .end local v3    # "displayFrame":Landroid/graphics/Rect;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "resultData":Landroid/os/Bundle;
    .end local v7    # "scrollableViewInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v8    # "scrollableViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "unscrollableViewInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v10    # "unscrollableViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v12    # "view$iterator":Ljava/util/Iterator;
    .end local v14    # "visibleDisplayFrame":Landroid/graphics/Rect;
    .end local v15    # "windowRect":Landroid/graphics/Rect;
    :goto_2
    return-void

    .line 307
    :cond_3
    const-string/jumbo v16, "SmartClipRemoteRequestDispatcher"

    const-string/jumbo v17, "dispatchScrollableAreaInfo : Root view is null!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private dispatchScrollableViewInfo(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 17
    .param p1, "request"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 312
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mViewRootImplGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    invoke-interface {v14}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 314
    .local v8, "rootView":Landroid/view/View;
    if-eqz v8, :cond_1

    .line 315
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    check-cast v14, Landroid/os/Bundle;

    const-string/jumbo v15, "hashCode"

    const/16 v16, -0x1

    invoke-virtual/range {v14 .. v16}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 316
    .local v12, "viewHash":I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_3

    .line 317
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->findViewByHashCode(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    .line 320
    .local v11, "view":Landroid/view/View;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v7, "resultData":Landroid/os/Bundle;
    if-eqz v11, :cond_2

    .line 323
    invoke-static {v8}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v13

    .line 324
    .local v13, "windowRect":Landroid/graphics/Rect;
    const-string/jumbo v14, "windowRect"

    invoke-virtual {v7, v14, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 327
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->createViewInfoAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v9

    .line 328
    .local v9, "targetViewInfo":Landroid/os/Bundle;
    const-string/jumbo v14, "targetView"

    invoke-virtual {v7, v14, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 331
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v4, "childInfoArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    instance-of v14, v11, Landroid/view/ViewGroup;

    if-eqz v14, :cond_0

    move-object v10, v11

    .line 333
    nop

    nop

    .line 334
    .local v10, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 335
    .local v2, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 336
    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 337
    .local v5, "childView":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->createViewInfoAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v3

    .line 338
    .local v3, "childInfo":Landroid/os/Bundle;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 341
    .end local v2    # "childCount":I
    .end local v3    # "childInfo":Landroid/os/Bundle;
    .end local v5    # "childView":Landroid/view/View;
    .end local v6    # "i":I
    .end local v10    # "vg":Landroid/view/ViewGroup;
    :cond_0
    const-string/jumbo v14, "childViews"

    invoke-virtual {v7, v14, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 342
    const-string/jumbo v14, "SmartClipRemoteRequestDispatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "dispatchScrollableViewInfo : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ChildCnt="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v4    # "childInfoArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v9    # "targetViewInfo":Landroid/os/Bundle;
    .end local v13    # "windowRect":Landroid/graphics/Rect;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->sendResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V

    .line 311
    .end local v7    # "resultData":Landroid/os/Bundle;
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "viewHash":I
    :cond_1
    :goto_2
    return-void

    .line 344
    .restart local v7    # "resultData":Landroid/os/Bundle;
    .restart local v11    # "view":Landroid/view/View;
    .restart local v12    # "viewHash":I
    :cond_2
    const-string/jumbo v14, "SmartClipRemoteRequestDispatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "dispatchScrollableViewInfo : Could not found the view! hash="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 348
    .end local v7    # "resultData":Landroid/os/Bundle;
    .end local v11    # "view":Landroid/view/View;
    :cond_3
    const-string/jumbo v14, "SmartClipRemoteRequestDispatcher"

    const-string/jumbo v15, "dispatchScrollableViewInfo : There is no hash value in request!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private enqueueInputEvent(Landroid/view/InputEvent;Z)V
    .locals 4
    .param p1, "inputEvent"    # Landroid/view/InputEvent;
    .param p2, "processImmediately"    # Z

    .prologue
    .line 631
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mViewRootImplGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    if-nez v1, :cond_0

    .line 632
    const-string/jumbo v1, "SmartClipRemoteRequestDispatcher"

    const-string/jumbo v2, "enqueueInputEvent : Gateway is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_0
    return-void

    .line 635
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mViewRootImplGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3, p2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SmartClipRemoteRequestDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enqueueInputEvent : Exception thrown. e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findScrollableViews(Landroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "windowRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p3, "scrollableViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p4, "unscrollableViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-eqz v18, :cond_1

    .line 465
    :cond_0
    return-void

    .line 464
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v18

    if-eqz v18, :cond_0

    .line 468
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    .line 469
    .local v16, "viewClassName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    .line 470
    .local v14, "parentClassName":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v15

    .line 472
    .local v15, "screenRectOfView":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 473
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 476
    .local v8, "hashCode":Ljava/lang/String;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ScrollView;

    move/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/AbsListView;

    move/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/webkit/WebView;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 477
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 478
    const-string/jumbo v18, "SmartClipRemoteRequestDispatcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "findScrollableViews : Scrollable view = @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") / Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " H="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_3
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    return-void

    .line 485
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v17, p1

    .line 486
    check-cast v17, Landroid/view/ViewGroup;

    .line 487
    .local v17, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 489
    .local v4, "childCount":I
    add-int/lit8 v11, v4, -0x1

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_5

    .line 490
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 492
    .local v7, "curView":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->findScrollableViews(Landroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 489
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 497
    .end local v4    # "childCount":I
    .end local v7    # "curView":Landroid/view/View;
    .end local v11    # "i":I
    .end local v17    # "viewGroup":Landroid/view/ViewGroup;
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/VideoView;

    move/from16 v18, v0

    if-nez v18, :cond_6

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/HorizontalScrollView;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 498
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 499
    const-string/jumbo v18, "SmartClipRemoteRequestDispatcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "findScrollableViews : Unscrollable view = @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") / Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " H="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_7
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    return-void

    .line 504
    :cond_8
    const/4 v10, 0x0

    .line 505
    .local v10, "haveCustomTouchEventHandler":Z
    const/4 v9, 0x0

    .line 507
    .local v9, "haveCustomDrawHandler":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 508
    .local v5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/Class;

    const-class v18, Landroid/view/MotionEvent;

    const/16 v19, 0x0

    aput-object v18, v13, v19

    .line 509
    .local v13, "paramEvent":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v12, v0, [Ljava/lang/Class;

    const-class v18, Landroid/graphics/Canvas;

    const/16 v19, 0x0

    aput-object v18, v12, v19

    .line 510
    .local v12, "paramCanvas":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v5, :cond_9

    .line 511
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 512
    .local v6, "clsName":Ljava/lang/String;
    const-string/jumbo v18, "android.view."

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 513
    const-string/jumbo v18, "android.widget."

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 567
    .end local v6    # "clsName":Ljava/lang/String;
    :cond_9
    if-eqz v10, :cond_a

    .line 571
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    .end local v5    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "hashCode":Ljava/lang/String;
    .end local v9    # "haveCustomDrawHandler":Z
    .end local v10    # "haveCustomTouchEventHandler":Z
    .end local v12    # "paramCanvas":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v13    # "paramEvent":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_a
    :goto_2
    return-void

    .line 514
    .restart local v5    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "clsName":Ljava/lang/String;
    .restart local v8    # "hashCode":Ljava/lang/String;
    .restart local v9    # "haveCustomDrawHandler":Z
    .restart local v10    # "haveCustomTouchEventHandler":Z
    .restart local v12    # "paramCanvas":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v13    # "paramEvent":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_b
    const-string/jumbo v18, "com.android.internal."

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 519
    const-string/jumbo v18, "dispatchTouchEvent"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v13}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 520
    const/4 v10, 0x1

    .line 522
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 523
    const-string/jumbo v18, "SmartClipRemoteRequestDispatcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "findScrollableViews : @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " Have dispatchTouchEvent() "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " / Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_c
    const-string/jumbo v18, "onTouchEvent"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v13}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 529
    const/4 v10, 0x1

    .line 530
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 531
    const-string/jumbo v18, "SmartClipRemoteRequestDispatcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "findScrollableViews : @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " Have onTouchEvent() "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " / Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_d
    const-string/jumbo v18, "onDraw"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v12}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 537
    const/4 v9, 0x1

    .line 538
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 539
    const-string/jumbo v18, "SmartClipRemoteRequestDispatcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "findScrollableViews : @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " Have onDraw() "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " / Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_e
    const-string/jumbo v18, "draw"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v12}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 545
    const/4 v9, 0x1

    .line 546
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 547
    const-string/jumbo v18, "SmartClipRemoteRequestDispatcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "findScrollableViews : @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " Have draw() "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " / Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_f
    const-string/jumbo v18, "dispatchDraw"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v12}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 553
    const/4 v9, 0x1

    .line 554
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 555
    const-string/jumbo v18, "SmartClipRemoteRequestDispatcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "findScrollableViews : @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " Have dispatchDraw() "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " / Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_10
    if-eqz v10, :cond_11

    if-nez v9, :cond_9

    .line 564
    :cond_11
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto/16 :goto_1

    .line 576
    .end local v5    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "clsName":Ljava/lang/String;
    .end local v8    # "hashCode":Ljava/lang/String;
    .end local v9    # "haveCustomDrawHandler":Z
    .end local v10    # "haveCustomTouchEventHandler":Z
    .end local v12    # "paramCanvas":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v13    # "paramEvent":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 577
    const-string/jumbo v18, "SmartClipRemoteRequestDispatcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "findScrollableViews : Not in range - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") / Rect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private findViewByHashCode(Landroid/view/View;I)Landroid/view/View;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewHash"    # I

    .prologue
    const/4 v6, 0x0

    .line 594
    if-nez p1, :cond_0

    .line 595
    return-object v6

    .line 598
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-ne v5, p2, :cond_1

    .line 599
    return-object p1

    .line 602
    :cond_1
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    move-object v4, p1

    .line 603
    nop

    nop

    .line 604
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 606
    .local v0, "childCount":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 607
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 609
    .local v1, "curView":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->findViewByHashCode(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 610
    .local v2, "foundView":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 611
    return-object v2

    .line 606
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 615
    .end local v0    # "childCount":I
    .end local v1    # "curView":Landroid/view/View;
    .end local v2    # "foundView":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_3
    return-object v6
.end method

.method private getViewHierarchyTable(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v2, "hierarchy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 418
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "clsName":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    const-string/jumbo v3, "android.view.View"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    .end local v1    # "clsName":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 424
    .restart local v1    # "clsName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 3
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 585
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 586
    const/4 v2, 0x1

    return v2

    .line 588
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 590
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private sendResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "request"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    .param p2, "resultData"    # Landroid/os/Parcelable;

    .prologue
    .line 644
    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "spengestureservice"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 645
    .local v1, "spenGestureManager":Lcom/samsung/android/content/smartclip/SpenGestureManager;
    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    iget v3, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    invoke-direct {v0, v2, v3, p2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;-><init>(IILandroid/os/Parcelable;)V

    .line 646
    .local v0, "result":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    invoke-virtual {v1, v0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V

    .line 643
    return-void
.end method

.method private transformTouchPosition(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 651
    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mViewRootImplGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    invoke-interface {v9}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 652
    .local v3, "rootView":Landroid/view/View;
    if-nez v3, :cond_0

    .line 653
    const-string/jumbo v9, "SmartClipRemoteRequestDispatcher"

    const-string/jumbo v10, "transformTouchPosition : Root view is not exists"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void

    .line 657
    :cond_0
    invoke-static {v3}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 658
    .local v4, "windowRect":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 659
    .local v5, "windowX":I
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 660
    .local v6, "windowY":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 661
    .local v0, "dssScale":F
    if-nez v5, :cond_1

    if-eqz v6, :cond_2

    .line 662
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 663
    .local v1, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 664
    .local v2, "rawY":F
    int-to-float v9, v5

    sub-float v9, v1, v9

    mul-float v7, v9, v10

    .line 665
    .local v7, "x":F
    int-to-float v9, v6

    sub-float v9, v2, v9

    mul-float v8, v9, v10

    .line 666
    .local v8, "y":F
    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 667
    iget-boolean v9, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 668
    const-string/jumbo v9, "SmartClipRemoteRequestDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "transformMotionEvent : Window offsetX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " offsetY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " dssScale="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " destX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " destY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .end local v1    # "rawX":F
    .end local v2    # "rawY":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_2
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;II)V
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 126
    .local v1, "havePermission":Z
    :cond_0
    if-nez v1, :cond_1

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "errStr":Ljava/lang/String;
    const-string/jumbo v2, "SmartClipRemoteRequestDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkPermission : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    .end local v0    # "errStr":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 3
    .param p1, "request"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 135
    iget v0, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    packed-switch v0, :pswitch_data_0

    .line 177
    const-string/jumbo v0, "SmartClipRemoteRequestDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchSmartClipRemoteRequest : Unknown request type("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    return-void

    .line 137
    :pswitch_0
    const-string/jumbo v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->checkPermission(Ljava/lang/String;II)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$1;-><init>(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 147
    :pswitch_1
    const-string/jumbo v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->checkPermission(Ljava/lang/String;II)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$2;-><init>(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 157
    :pswitch_2
    const-string/jumbo v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->checkPermission(Ljava/lang/String;II)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$3;-><init>(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 167
    :pswitch_3
    const-string/jumbo v0, "android.permission.INJECT_EVENTS"

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->checkPermission(Ljava/lang/String;II)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$4;-><init>(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isDebugMode()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    return v0
.end method
