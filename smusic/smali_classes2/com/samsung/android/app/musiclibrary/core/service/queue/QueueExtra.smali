.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueExtra;
.super Ljava/lang/Object;
.source "QueueExtra.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueExtra$UNIQUE;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueExtra$QUEUE_CHANGED_REASONS;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueExtra$MODE_VALUES;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueExtra$ERROR;
    }
.end annotation


# static fields
.field public static final ACTION_DUPLICATE_TRACK_DELETED:Ljava/lang/String; = "com.samsung.android.app.music.core.state.queue.DUPLICATE_TRACK_DELETE"

.field public static final ACTION_ERROR:Ljava/lang/String; = "com.samsung.android.app.music.core.state.queue.ERROR"

.field public static final ACTION_MODE_CHANGED:Ljava/lang/String; = "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

.field public static final EXTRA_CHANGED_REASON:Ljava/lang/String; = "extra.queue_changed_reason"

.field public static final EXTRA_CURRENT_QUEUE_TYPE:Ljava/lang/String; = "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

.field public static final EXTRA_LIST_LENGTH:Ljava/lang/String; = "extra.list_length"

.field public static final EXTRA_LIST_POSITION:Ljava/lang/String; = "extra.list_position"

.field public static final EXTRA_LIST_TYPE:Ljava/lang/String; = "extra.list_type"

.field public static final EXTRA_MODE_VALUES:Ljava/lang/String; = "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

.field public static final EXTRA_URI_TYPE:Ljava/lang/String; = "extra.uri_type"

.field private static final STATE_PREFIX:Ljava/lang/String; = "com.samsung.android.app.music.core.state.queue."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
