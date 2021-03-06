.class public Lcom/samsung/android/multiwindow/MultiWindowLogger;
.super Ljava/lang/Object;
.source "MultiWindowLogger.java"


# static fields
.field static final APP_ID:Ljava/lang/String; = "app_id"

.field static final DEBUG:Z = false

.field public static final DOCKED_BY:Ljava/lang/String; = "DOBY"

.field public static final DOCKED_BY_FREEFORM_DRAGGING:Ljava/lang/String; = "FreeformDragging"

.field public static final DOCKED_BY_RECENTS_DRAGGING:Ljava/lang/String; = "RecentsDragging"

.field public static final DOCKED_BY_RECENTS_LONG:Ljava/lang/String; = "RecentsLong"

.field public static final DOCKED_BY_RECENTS_MWBUTTON:Ljava/lang/String; = "RecentsMWButton"

.field public static final DOCKED_OFF:Ljava/lang/String; = "DOOF"

.field public static final DOCKED_OFF_BY_DIVIDER_CLOSE_BUTTON:Ljava/lang/String; = "DividerCloseButton"

.field public static final DOCKED_OFF_BY_DIVIDER_DRAGGING:Ljava/lang/String; = "DividerDragging"

.field public static final DOCKED_OFF_BY_MINIMIZED_NOTIFICAION:Ljava/lang/String; = "MinimizedNotification"

.field public static final DOCKED_OFF_BY_MW_NOTSUPPORTED_APP:Ljava/lang/String; = "MWNotSupportedApp"

.field public static final DOCKED_OFF_BY_RECENTS_LONG:Ljava/lang/String; = "RecentsLong"

.field public static final DOCKED_PACKAGE:Ljava/lang/String; = "DOPK"

.field static final EXTRA:Ljava/lang/String; = "extra"

.field static final FEATURE:Ljava/lang/String; = "feature"

.field public static final FREEFORM_ACTIONS:Ljava/lang/String; = "FFAC"

.field public static final FREEFORM_ACTIONS_CHANGE_TO_SPLIT:Ljava/lang/String; = "ChangeToSplit"

.field public static final FREEFORM_ACTIONS_CLOSE:Ljava/lang/String; = "Close"

.field public static final FREEFORM_ACTIONS_MAXIMIZE:Ljava/lang/String; = "Maximize"

.field public static final FREEFORM_ACTIONS_MINIMIZE:Ljava/lang/String; = "Minimize"

.field public static final FREEFORM_ACTIONS_TRASH:Ljava/lang/String; = "Trash"

.field public static final FREEFORM_BY:Ljava/lang/String; = "FFBY"

.field public static final FREEFORM_BY_DIVIDER:Ljava/lang/String; = "DividerButton"

.field public static final FREEFORM_BY_GESTURE:Ljava/lang/String; = "Gesture"

.field public static final FREEFORM_BY_RECENTS_DRAGGING:Ljava/lang/String; = "RecentsDragging"

.field public static final FREEFORM_ENTER_PACKAGE:Ljava/lang/String; = "FFEP"

.field public static final FREEFORM_PACKAGE_LIST:Ljava/lang/String; = "FFPA"

.field public static final FREEFORM_TASK_COUNT:Ljava/lang/String; = "FFCO"

.field static final GSIM_DATA:Ljava/lang/String; = "data"

.field static final GSIM_INTENT:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field static final GSIM_INTENT_MULTI:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

.field static final GSIM_PACKAGE:Ljava/lang/String; = "com.samsung.android.providers.context"

.field static final MULTIWINDOW_ID:Ljava/lang/String; = "com.samsung.android.multiwindow"

.field public static final SPLIT_ACTIONS:Ljava/lang/String; = "SPAC"

.field public static final SPLIT_ACTIONS_CLOSE:Ljava/lang/String; = "Close"

.field public static final SPLIT_ACTIONS_SWITCH:Ljava/lang/String; = "Switch"

.field public static final SPLIT_BY:Ljava/lang/String; = "SPBY"

.field public static final SPLIT_BY_FREEFORM_DRAGGING:Ljava/lang/String; = "FreeformDragging"

.field public static final SPLIT_BY_HOME:Ljava/lang/String; = "Home"

.field public static final SPLIT_BY_RECENTS:Ljava/lang/String; = "Recents"

.field public static final SPLIT_PAIR:Ljava/lang/String; = "SPPA"

.field private static final SURVEY_LOG:Z

.field static final TAG:Ljava/lang/String; = "MultiWindowLogger"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 84
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowLogger;->SURVEY_LOG:Z

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowLogger;->SURVEY_LOG:Z

    if-nez v2, :cond_0

    .line 89
    return-void

    .line 92
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 93
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.multiwindow"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-eqz p2, :cond_1

    .line 96
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 102
    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 87
    return-void
.end method

.method public static logGSIM(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "features"    # [Ljava/lang/String;
    .param p2, "extras"    # [Ljava/lang/String;

    .prologue
    .line 111
    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowLogger;->SURVEY_LOG:Z

    if-nez v4, :cond_0

    .line 112
    return-void

    .line 116
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 117
    aget-object v4, p1, v3

    if-nez v4, :cond_3

    .line 121
    :cond_1
    new-array v1, v3, [Landroid/content/ContentValues;

    .line 123
    .local v1, "cvs":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 124
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v1, v2

    .line 125
    aget-object v4, v1, v2

    const-string/jumbo v5, "app_id"

    const-string/jumbo v6, "com.samsung.android.multiwindow"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    aget-object v4, v1, v2

    const-string/jumbo v5, "feature"

    aget-object v6, p1, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    aget-object v4, p2, v2

    if-eqz v4, :cond_2

    .line 128
    aget-object v4, v1, v2

    const-string/jumbo v5, "extra"

    aget-object v6, p2, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    .end local v1    # "cvs":[Landroid/content/ContentValues;
    .end local v2    # "i":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .restart local v1    # "cvs":[Landroid/content/ContentValues;
    .restart local v2    # "i":I
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string/jumbo v4, "data"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    const-string/jumbo v4, "com.samsung.android.providers.context"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 110
    return-void
.end method
