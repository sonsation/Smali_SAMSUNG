.class public Lcom/samsung/android/framework/feature/MultiWindowFeatures;
.super Ljava/lang/Object;
.source "MultiWindowFeatures.java"


# static fields
.field public static final FEATURE_ENSURE_DOCKED_VIEW:Ljava/lang/String; = "com.sec.feature.multiwindow.ensure_docked_view"

.field public static final FEATURE_LONG_DEVICE_SNAP_MODE:Ljava/lang/String; = "com.sec.feature.multiwindow.long_device_snap_mode"

.field public static final FEATURE_SNAP_VIEW:Ljava/lang/String; = "com.sec.feature.multiwindow.snap_view"

.field public static FREEFORM_ADJUST_STACK_ORDER:Z = false

.field public static FREEFORM_DENSITY_CHANGE:Z = false

.field public static FREEFORM_FOCUSED_FRAME:Z = false

.field public static FREEFORM_GESTURE:Z = false

.field public static FREEFORM_GHOST_MODE:Z = false

.field public static FREEFORM_GUIDE_RESIZE:Z = false

.field public static FREEFORM_SLIDE_MODE:Z = false

.field public static FREEFORM_SUPPORT:Z = false

.field public static LONG_DEVICE_SNAP_MODE_SUPPORT:Z = false

.field public static MINIMIZED_DOCK_DYNAMIC_ENABLED:Z = false

.field public static MULTIINSTANCE_SUPPORT:Z = false

.field public static MULTIWINDOW_DYNAMIC_ENABLED:Z = false

.field public static SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z = false

.field public static final SAMSUNG_MULTIWINDOW_HIDE_STATUSBAR_IN_DOCKED:Z = true

.field public static final SAMSUNG_MULTIWINDOW_SUPPORT:Z = true

.field public static final SET_FREEFORM_GESTURE:Ljava/lang/String; = "db_popup_view_shortcut"

.field public static final SET_MULTIWINDOW_DYNAMIC_ENALBED:Ljava/lang/String; = "multi_window_enabled"

.field public static final SET_MULTIWINDOW_FEATURE_LIST:Ljava/lang/String; = "set_multiwindow_feature_list"

.field public static SNAP_VIEW_SUPPORT:Z = false

.field public static final TAG:Ljava/lang/String; = "MultiWindowFeatures"

.field public static final UPDATE_DECOR_CAPTION_FEATURES:I = 0x59

.field public static final UPDATE_FREEFORM_DENSITY_CHANGE:I = 0x40

.field public static final UPDATE_FREEFORM_FOCUSED_FRAME:I = 0x10

.field public static final UPDATE_FREEFORM_GESTURE:I = 0x4

.field public static final UPDATE_FREEFORM_GHOST_MODE:I = 0x8

.field public static final UPDATE_FREEFORM_GUIDE_RESIZE:I = 0x80

.field public static final UPDATE_FREEFORM_SLIDE_MODE:I = 0x20

.field public static final UPDATE_FREEFORM_SUPPORT:I = 0x2

.field public static final UPDATE_MULTIINSTANCE_SUPPORT:I = 0x10000

.field public static final UPDATE_MULTIWINDOW_DYNAMIC_ENABLED:I = 0x20000

.field public static final UPDATE_SAMSUNG_MULTIWINDOW_ENABLED:I = 0x1

.field public static final VAL_FREEFORM_DENSITY_CHANGE:Ljava/lang/String; = "freeform_density_change"

.field public static final VAL_FREEFORM_FOCUSED_FRAME:Ljava/lang/String; = "freeform_focused_frame"

.field public static final VAL_FREEFORM_GHOST_MODE:Ljava/lang/String; = "freeform_ghost_mode"

.field public static final VAL_FREEFORM_GUIDE_RESIZE:Ljava/lang/String; = "freeform_guide_resize"

.field public static final VAL_FREEFORM_SLIDE_MODE:Ljava/lang/String; = "freeform_slide_mode"

.field public static final VAL_FREEFORM_SUPPORT:Ljava/lang/String; = "freeform_support"

.field public static final VAL_MULTIINSTANCE_SUPPORT:Ljava/lang/String; = "multiinstance_support"

.field public static final VAL_MULTIWINDOW_DEFAULT_SETTINGS:Ljava/lang/String; = "multiwindow_enabled,freeform_density_change,freeform_focused_frame,freeform_guide_resize"

.field public static final VAL_MULTIWINDOW_ENABLED:Ljava/lang/String; = "multiwindow_enabled"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    .line 40
    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MINIMIZED_DOCK_DYNAMIC_ENABLED:Z

    .line 47
    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    .line 48
    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->LONG_DEVICE_SNAP_MODE_SUPPORT:Z

    .line 51
    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    .line 52
    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    .line 53
    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    .line 54
    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GHOST_MODE:Z

    .line 55
    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_FOCUSED_FRAME:Z

    .line 56
    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    .line 57
    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_DENSITY_CHANGE:Z

    .line 58
    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    .line 60
    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIINSTANCE_SUPPORT:Z

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 228
    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public static makeSettingDB(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, ""

    .line 204
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 205
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 206
    .local v1, "size":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "val$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    .local v2, "val":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v5, v1, -0x1

    if-eq v4, v5, :cond_0

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 213
    .end local v1    # "size":I
    .end local v2    # "val":Ljava/lang/String;
    .end local v3    # "val$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public static onMultiWindowSettingsChange(Landroid/os/Bundle;)I
    .locals 15
    .param p0, "mwSettings"    # Landroid/os/Bundle;

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    const/4 v13, 0x0

    return v13

    .line 106
    :cond_0
    const-string/jumbo v13, "set_multiwindow_feature_list"

    invoke-virtual {p0, v13}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 107
    .local v11, "multiWindowFeatureDB":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v12, "multiWindowFeatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v11}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->parseSettingDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 110
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    .line 111
    .local v9, "lastMultiwindowEnabled":Z
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    .line 112
    .local v4, "lastFreeformSupport":Z
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    .line 113
    .local v3, "lastFreeformGesture":Z
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GHOST_MODE:Z

    .line 114
    .local v5, "lastGhostMode":Z
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_FOCUSED_FRAME:Z

    .line 115
    .local v2, "lastFocusedFrame":Z
    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    .line 116
    .local v10, "lastSlideMode":Z
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_DENSITY_CHANGE:Z

    .line 117
    .local v1, "lastDensityChange":Z
    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    .line 118
    .local v6, "lastGuideReszie":Z
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIINSTANCE_SUPPORT:Z

    .line 119
    .local v7, "lastMultiInstanceSupport":Z
    sget-boolean v8, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    .line 122
    .local v8, "lastMultiWindowDynamicEnabled":Z
    const-string/jumbo v13, "multiwindow_enabled"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    sput-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    .line 123
    const-string/jumbo v13, "freeform_support"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    sput-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    .line 124
    const-string/jumbo v13, "freeform_ghost_mode"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    sput-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GHOST_MODE:Z

    .line 125
    const-string/jumbo v13, "freeform_focused_frame"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    sput-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_FOCUSED_FRAME:Z

    .line 126
    const-string/jumbo v13, "freeform_slide_mode"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    sput-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    .line 127
    const-string/jumbo v13, "freeform_density_change"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    sput-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_DENSITY_CHANGE:Z

    .line 128
    const-string/jumbo v13, "freeform_guide_resize"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    sput-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    .line 129
    const-string/jumbo v13, "multiinstance_support"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    sput-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIINSTANCE_SUPPORT:Z

    .line 132
    const-string/jumbo v13, "multi_window_enabled"

    const/4 v14, 0x1

    invoke-virtual {p0, v13, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    const/4 v13, 0x1

    :goto_0
    sput-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    .line 133
    const-string/jumbo v13, "db_popup_view_shortcut"

    const/4 v14, -0x1

    invoke-virtual {p0, v13, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    const/4 v13, 0x1

    :goto_1
    sput-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "changes":I
    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eq v13, v9, :cond_1

    .line 137
    const/4 v0, 0x1

    .line 139
    :cond_1
    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eq v13, v4, :cond_2

    .line 140
    or-int/lit8 v0, v0, 0x2

    .line 142
    :cond_2
    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    if-eq v13, v3, :cond_3

    .line 143
    or-int/lit8 v0, v0, 0x4

    .line 145
    :cond_3
    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GHOST_MODE:Z

    if-eq v13, v5, :cond_4

    .line 146
    or-int/lit8 v0, v0, 0x8

    .line 148
    :cond_4
    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_FOCUSED_FRAME:Z

    if-eq v13, v2, :cond_5

    .line 149
    or-int/lit8 v0, v0, 0x10

    .line 151
    :cond_5
    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eq v13, v10, :cond_6

    .line 152
    or-int/lit8 v0, v0, 0x20

    .line 154
    :cond_6
    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_DENSITY_CHANGE:Z

    if-eq v13, v1, :cond_7

    .line 155
    or-int/lit8 v0, v0, 0x40

    .line 157
    :cond_7
    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eq v13, v6, :cond_8

    .line 158
    or-int/lit16 v0, v0, 0x80

    .line 160
    :cond_8
    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIINSTANCE_SUPPORT:Z

    if-eq v13, v7, :cond_9

    .line 161
    const/high16 v13, 0x10000

    or-int/2addr v0, v13

    .line 163
    :cond_9
    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eq v13, v8, :cond_a

    .line 164
    const/high16 v13, 0x20000

    or-int/2addr v0, v13

    .line 166
    :cond_a
    return v0

    .line 132
    .end local v0    # "changes":I
    :cond_b
    const/4 v13, 0x0

    goto :goto_0

    .line 133
    :cond_c
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public static onMultiWindowSystemFeatureInitialized(Z)V
    .locals 0
    .param p0, "b"    # Z

    .prologue
    .line 170
    sput-boolean p0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    .line 169
    return-void
.end method

.method public static parseSettingDB(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "setting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 191
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 192
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "settings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 194
    aget-object v3, v2, v0

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "i":I
    .end local v2    # "settings":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static removeSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 217
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 220
    const/4 v0, 0x1

    return v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static updateDecorCaption(I)Z
    .locals 2
    .param p0, "changes"    # I

    .prologue
    const/4 v0, 0x0

    .line 181
    and-int/lit8 v1, p0, 0x59

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static updateMultiWindowDynamicEnabled(I)Z
    .locals 2
    .param p0, "changes"    # I

    .prologue
    const/4 v0, 0x0

    .line 185
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
