.class public Lcom/samsung/android/content/clipboard/SemClipboardManager;
.super Ljava/lang/Object;
.source "SemClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/clipboard/SemClipboardManager$1;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$2;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$ClipboardEvent;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$Type;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_CLIP:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.ADD_CLIP"

.field public static final ACTION_CLIPBOARD_CLOSED:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.CLIPBOARD_CLOSED"

.field public static final ACTION_CLIPBOARD_OPENED:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.CLIPBOARD_OPENED"

.field public static final ACTION_DISMISS_CLIPBOARD:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.DISMISS_CLIPBOARD"

.field public static final ACTION_REMOVE_CLIP:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.REMOVE_CLIP"

.field public static final EXTRA_DARK_THEME:Ljava/lang/String; = "darkTheme"

.field public static final EXTRA_EXTRA_PATH:Ljava/lang/String; = "extra_path"

.field public static final EXTRA_NO_TOAST:Ljava/lang/String; = "noToast"

.field public static final EXTRA_PATH:Ljava/lang/String; = "path"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "SemClipboardManager"

.field private static sService:Landroid/sec/clipboard/IClipboardService;


# instance fields
.field private final FAIL_SET_DATA:I

.field private final KEY_DATA:Ljava/lang/String;

.field private final KEY_FILTER:Ljava/lang/String;

.field private final PROTECTED_DATA_MAX:I

.field private final SUCCESS_AND_SAVE_BITMAP:I

.field private final SUCCESS_SET_DATA:I

.field private mClipboardPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

.field private mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsFiltered:Z

.field private mIsMaximumSize:Z

.field private final mOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;

.field private mOnClipboardEventServiceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/content/clipboard/SemClipboardEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private mSetDataHandler:Landroid/os/Handler;

.field private mTypeId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/content/clipboard/SemClipboardManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/content/clipboard/SemClipboardManager;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->notifyEvent(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->SUCCESS_SET_DATA:I

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->FAIL_SET_DATA:I

    .line 73
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->SUCCESS_AND_SAVE_BITMAP:I

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->PROTECTED_DATA_MAX:I

    .line 75
    const-string/jumbo v0, "data"

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->KEY_DATA:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "filter"

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->KEY_FILTER:Ljava/lang/String;

    .line 78
    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsFiltered:Z

    .line 79
    iput v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    .line 80
    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    .line 81
    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    .line 82
    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSetDataHandler:Landroid/os/Handler;

    .line 84
    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    .line 85
    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 86
    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .line 87
    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager$1;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;

    .line 112
    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    .line 345
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    .line 346
    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$3;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$3;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mHandler:Landroid/os/Handler;

    .line 353
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 355
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-nez v0, :cond_0

    .line 356
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "no knox"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    return-void
.end method

.method private add(Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZI)I
    .locals 6
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p2, "withoutNoti"    # Z
    .param p3, "setPrimary"    # Z
    .param p4, "withoutSendingOrigin"    # Z
    .param p5, "callingId"    # I

    .prologue
    .line 1212
    const/4 v2, 0x1

    .line 1214
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "SemClipboardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    if-eqz p1, :cond_5

    .line 1216
    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->makeFileDescriptor(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1217
    const-string/jumbo v3, "SemClipboardManager"

    const-string/jumbo v4, "failed making file descriptor!"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sendResult(ZI)V

    .line 1219
    const/4 v3, 0x1

    return v3

    .line 1222
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v1

    .line 1223
    .local v1, "formatId":I
    if-eqz p4, :cond_2

    .line 1224
    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 1225
    const/4 v2, 0x1

    .line 1238
    :goto_0
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sendResult(ZI)V

    .line 1239
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->closeParcelFileDescriptor()V

    .line 1246
    .end local v1    # "formatId":I
    :goto_1
    return v2

    .line 1227
    .restart local v1    # "formatId":I
    :cond_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, p1, v4, p5}, Landroid/sec/clipboard/IClipboardService;->setClipDataToSem(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 1229
    :cond_2
    if-eqz p3, :cond_4

    .line 1230
    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_3

    .line 1231
    const/4 v2, 0x1

    goto :goto_0

    .line 1233
    :cond_3
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, p1, v4, p5}, Landroid/sec/clipboard/IClipboardService;->setClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 1236
    :cond_4
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v1, p1}, Landroid/sec/clipboard/IClipboardService;->setClipDataFromOriginal(ILcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v2

    goto :goto_0

    .line 1241
    .end local v1    # "formatId":I
    :cond_5
    const-string/jumbo v3, "SemClipboardManager"

    const-string/jumbo v4, "addData - clipdata is null!"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1243
    :catch_0
    move-exception v0

    .line 1244
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private addData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZ)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p3, "withoutNoti"    # Z
    .param p4, "setPrimary"    # Z
    .param p5, "withoutSendingOrigin"    # Z

    .prologue
    const/high16 v4, 0x20000

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1014
    const-string/jumbo v0, "addData"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1015
    return v3

    .line 1018
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    .line 1020
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_2

    .line 1021
    :cond_1
    const-string/jumbo v0, "SemClipboardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addData - Fail~ Service is null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    return v3

    .line 1025
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 1026
    invoke-virtual {p2, v2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getAlternateClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 1027
    .local v6, "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getPlainText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getPlainText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_4

    .line 1028
    iput-boolean v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    .line 1043
    .end local v6    # "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSetDataHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 1044
    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager$4;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSetDataHandler:Landroid/os/Handler;

    .line 1090
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getPersonaId()I

    move-result v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->add(Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZI)I

    move-result v0

    return v0

    .line 1030
    .restart local v6    # "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    goto :goto_0

    .line 1032
    .end local v6    # "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    :cond_5
    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 1033
    invoke-virtual {p2, v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getAlternateClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    .line 1034
    .local v7, "textData":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v0, v4, :cond_6

    .line 1035
    iput-boolean v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    goto :goto_0

    .line 1037
    :cond_6
    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    goto :goto_0

    .line 1040
    .end local v7    # "textData":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    :cond_7
    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    goto :goto_0
.end method

.method private static getService()Landroid/sec/clipboard/IClipboardService;
    .locals 3

    .prologue
    .line 392
    sget-object v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_0

    .line 393
    sget-object v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    return-object v1

    .line 395
    :cond_0
    const-string/jumbo v1, "semclipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 396
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    .line 397
    sget-object v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-nez v1, :cond_1

    .line 398
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 399
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "Failed to get semclipboard service."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1
    sget-object v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    return-object v1
.end method

.method private getUserId()I
    .locals 4

    .prologue
    .line 382
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 383
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 384
    .local v1, "userId":I
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    const/4 v1, 0x0

    .line 386
    const-string/jumbo v2, "SemClipboardManager"

    const-string/jumbo v3, "getUserId is BBC"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    return v1
.end method

.method private isCocktailBarDisplayed()Z
    .locals 4

    .prologue
    .line 1324
    const/4 v0, 0x0

    .line 1325
    .local v0, "isCocktailBarShowing":Z
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    if-nez v1, :cond_0

    .line 1326
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "CocktailBarService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    .line 1328
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    if-nez v1, :cond_2

    .line 1329
    const/4 v0, 0x0

    .line 1335
    :cond_1
    :goto_0
    const-string/jumbo v1, "SemClipboardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCocktailBarDisplayed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    return v0

    .line 1330
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getCocktailBarWindowType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1331
    const/4 v0, 0x0

    goto :goto_0

    .line 1332
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getCocktailBarWindowType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1333
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isEmergencyMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1362
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 1364
    .local v0, "emergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    if-eqz v0, :cond_0

    .line 1365
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getModeType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1371
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "isEmergencyMode: Device is not in emergency mode, so returning false!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return v3

    .line 1367
    :pswitch_0
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "isEmergencyMode: Device is in emergency mode, so returning true!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const/4 v1, 0x1

    return v1

    .line 1375
    :cond_0
    return v3

    .line 1365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private isEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "func"    # Ljava/lang/String;

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1263
    const-string/jumbo v0, "SemClipboardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not enabled! from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    const/4 v0, 0x0

    return v0

    .line 1266
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isUPSMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1340
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 1341
    .local v0, "emergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isUltraPowerSavingModeSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1342
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "isUPSMode: UPSM is not supported so retuning false!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    return v3

    .line 1346
    :cond_0
    if-eqz v0, :cond_1

    .line 1347
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getModeType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1353
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "isUPSMode: Device is not in UPSM, so returning false!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    return v3

    .line 1349
    :pswitch_0
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "isUPSMode: Device is in UPSM, so returning true!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const/4 v1, 0x1

    return v1

    .line 1357
    :cond_1
    return v3

    .line 1347
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private makeFileDescriptor(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 14
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    const/4 v13, 0x0

    .line 1094
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v3

    .line 1095
    .local v3, "fh":Landroid/sec/clipboard/util/FileHelper;
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 1208
    :cond_0
    :goto_0
    const/4 v10, 0x1

    return v10

    :sswitch_0
    move-object v8, p1

    .line 1097
    check-cast v8, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    .line 1098
    .local v8, "target":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    invoke-virtual {v8}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 1099
    .local v4, "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 1100
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1101
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1102
    const/4 v5, 0x0

    .line 1104
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v10, 0x38000000

    :try_start_0
    invoke-static {v2, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1105
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v8, v5}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1118
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual {v8}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->HasExtraData()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1119
    invoke-virtual {v8}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v1

    .line 1120
    .local v1, "extraPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 1121
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1122
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1123
    const/4 v5, 0x0

    .line 1125
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v10, 0x38000000

    :try_start_1
    invoke-static {v2, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1126
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v8, v5}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1127
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 1128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1129
    return v13

    .line 1106
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "extraPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1107
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1108
    return v13

    .line 1111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v10, "SemClipboardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "it\'s not file. : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    return v13

    .line 1115
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    const-string/jumbo v10, "SemClipboardManager"

    const-string/jumbo v11, "no bitmap file"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1132
    .restart local v1    # "extraPath":Ljava/lang/String;
    .restart local v2    # "f":Ljava/io/File;
    :cond_3
    const-string/jumbo v10, "SemClipboardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "it\'s not file. : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    return v13

    .line 1137
    .end local v1    # "extraPath":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    :cond_4
    const-string/jumbo v10, "SemClipboardManager"

    const-string/jumbo v11, "no extra bitmap file"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "imgPath":Ljava/lang/String;
    .end local v8    # "target":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    :sswitch_1
    move-object v7, p1

    .line 1143
    check-cast v7, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 1144
    .local v7, "target":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v4

    .line 1146
    .restart local v4    # "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_5

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_6

    .line 1147
    :cond_5
    invoke-virtual {v3, v7}, Landroid/sec/clipboard/util/FileHelper;->setFirstImagePathFromHtmlData(Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;)Z

    move-result v6

    .line 1148
    .local v6, "result":Z
    if-eqz v6, :cond_6

    .line 1149
    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v4

    .line 1153
    .end local v6    # "result":Z
    :cond_6
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 1154
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1155
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1156
    const/4 v5, 0x0

    .line 1158
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v10, 0x38000000

    :try_start_2
    invoke-static {v2, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1159
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v7, v5}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1160
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v0

    .line 1161
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1162
    return v13

    .line 1165
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    const-string/jumbo v10, "SemClipboardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "it\'s not file. : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    return v13

    .line 1169
    .end local v2    # "f":Ljava/io/File;
    :cond_8
    const-string/jumbo v10, "SemClipboardManager"

    const-string/jumbo v11, "no first image file"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "imgPath":Ljava/lang/String;
    .end local v7    # "target":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    :sswitch_2
    move-object v9, p1

    .line 1175
    check-cast v9, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .line 1176
    .local v9, "target":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    .line 1178
    .restart local v4    # "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_9

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_a

    .line 1179
    :cond_9
    invoke-virtual {v3, v9}, Landroid/sec/clipboard/util/FileHelper;->setThumbnailImagePathFromUriData(Lcom/samsung/android/content/clipboard/data/SemUriClipData;)Z

    move-result v6

    .line 1180
    .restart local v6    # "result":Z
    if-eqz v6, :cond_a

    .line 1181
    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    .line 1185
    .end local v6    # "result":Z
    :cond_a
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_c

    .line 1186
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1187
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1188
    const/4 v5, 0x0

    .line 1190
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v10, 0x38000000

    :try_start_3
    invoke-static {v2, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1191
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v9, v5}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1192
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v0

    .line 1193
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1194
    return v13

    .line 1197
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    const-string/jumbo v10, "SemClipboardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "it\'s not file. : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    return v13

    .line 1201
    .end local v2    # "f":Ljava/io/File;
    :cond_c
    const-string/jumbo v10, "SemClipboardManager"

    const-string/jumbo v11, "no preview image file"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1095
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private notifyEvent(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1271
    const/4 v1, 0x0

    .line 1273
    .local v1, "bundle":Landroid/os/Bundle;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1269
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void

    .line 1278
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :pswitch_0
    const/4 v2, 0x0

    .line 1280
    .local v2, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1281
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 1282
    const-string/jumbo v6, "data"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    check-cast v2, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 1285
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1286
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1287
    .local v0, "N":I
    if-gtz v0, :cond_2

    monitor-exit v7

    .line 1288
    return-void

    .line 1290
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .local v5, "listeners":[Ljava/lang/Object;
    monitor-exit v7

    .line 1293
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 1294
    aget-object v6, v5, v4

    check-cast v6, Lcom/samsung/android/content/clipboard/SemClipboardEventListener;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-interface {v6, v7, v2}, Lcom/samsung/android/content/clipboard/SemClipboardEventListener;->onClipboardUpdated(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 1293
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1285
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v5    # "listeners":[Ljava/lang/Object;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1299
    .local v1, "bundle":Landroid/os/Bundle;
    :pswitch_1
    const/4 v3, 0x0

    .line 1301
    .local v3, "filter":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1302
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 1303
    const-string/jumbo v6, "filter"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1306
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1307
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 1308
    .restart local v0    # "N":I
    if-gtz v0, :cond_4

    monitor-exit v7

    .line 1309
    return-void

    .line 1311
    :cond_4
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .restart local v5    # "listeners":[Ljava/lang/Object;
    monitor-exit v7

    .line 1314
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 1315
    aget-object v6, v5, v4

    check-cast v6, Lcom/samsung/android/content/clipboard/SemClipboardEventListener;

    invoke-interface {v6, v3}, Lcom/samsung/android/content/clipboard/SemClipboardEventListener;->onFilterUpdated(I)V

    .line 1314
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1306
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v5    # "listeners":[Ljava/lang/Object;
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendResult(ZI)V
    .locals 3
    .param p1, "withoutNoti"    # Z
    .param p2, "result"    # I

    .prologue
    const/4 v2, 0x0

    .line 1250
    if-nez p1, :cond_0

    .line 1251
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSetDataHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1252
    .local v0, "msg":Landroid/os/Message;
    if-nez p2, :cond_1

    .line 1253
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1257
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSetDataHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1249
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 1255
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method private startClipboardUIServiceService()V
    .locals 5

    .prologue
    .line 604
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 605
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.clipboarduiservice"

    .line 606
    const-string/jumbo v4, "com.samsung.android.clipboarduiservice.ClipboardUIServiceStarter"

    .line 605
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 609
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addClip(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p3, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;

    .prologue
    const/4 v3, 0x0

    .line 428
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->addData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZ)I

    move-result v6

    .line 429
    .local v6, "result":I
    if-eqz p3, :cond_0

    .line 430
    if-nez v6, :cond_1

    .line 431
    invoke-interface {p3}, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;->onSuccess()V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    invoke-interface {p3, v6}, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;->onFailure(I)V

    goto :goto_0
.end method

.method public clearFilter(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)Z
    .locals 5
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 947
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isCocktailBarDisplayed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    return v4

    .line 951
    :cond_0
    if-nez p2, :cond_1

    .line 952
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "Wrong usage: clearFilter - parameter listener is null. Application should set listener!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return v4

    .line 956
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 957
    iput-boolean v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsFiltered:Z

    .line 958
    iput v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    .line 959
    iput-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .line 961
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 962
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/sec/clipboard/IClipboardService;->updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    const/4 v1, 0x1

    return v1

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 970
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return v4
.end method

.method public dismissDialog()V
    .locals 3

    .prologue
    .line 788
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 789
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "dismissDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return-void

    .line 793
    :cond_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->dismissDialog()V

    .line 794
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "dismissDialog"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public filterClip(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .prologue
    .line 625
    const-string/jumbo v0, "filterClip"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    return-void

    .line 629
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsFiltered:Z

    .line 630
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 631
    const/4 p1, -0x1

    .line 632
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "setFilter - Format changed"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->updateFilter(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V

    .line 637
    if-eqz p2, :cond_2

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsFiltered:Z

    .line 641
    :cond_2
    const-string/jumbo v0, "SemClipboardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFilter - Format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isCocktailBarDisplayed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 643
    iput p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    .line 644
    iput-object p2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .line 624
    :cond_3
    return-void
.end method

.method public getClip(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 888
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 889
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/sec/clipboard/IClipboardService;->getClip(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    return-object v0

    .line 891
    :cond_0
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "getService() is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return-object v2
.end method

.method public getClips()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/content/clipboard/data/SemClipData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 873
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 874
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0}, Landroid/sec/clipboard/IClipboardService;->getClips()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 876
    :cond_0
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "getService() is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-object v2
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 492
    const-string/jumbo v2, "getCount"

    invoke-direct {p0, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 493
    const/4 v2, 0x0

    return v2

    .line 496
    :cond_0
    const/4 v1, -0x1

    .line 498
    .local v1, "size":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 499
    const-string/jumbo v2, "SemClipboardManager"

    const-string/jumbo v3, "getCount - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return v1

    .line 502
    :cond_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 506
    :goto_0
    return v1

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getLatestClip(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 467
    const-string/jumbo v3, "getData"

    invoke-direct {p0, v3}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 468
    return-object v4

    .line 470
    :cond_0
    const/4 v0, 0x0

    .line 472
    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 473
    const-string/jumbo v3, "SemClipboardManager"

    const-string/jumbo v4, "getData - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-object v0

    .line 476
    :cond_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardService;->loadSEClipboard()V

    .line 478
    iget v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    if-eqz v3, :cond_2

    iget v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    .line 479
    .local v2, "myFormat":I
    :goto_0
    const-string/jumbo v3, "SemClipboardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLatestData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/sec/clipboard/IClipboardService;->getClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 484
    .end local v0    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v2    # "myFormat":I
    :goto_1
    return-object v0

    .line 478
    .restart local v0    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_2
    move v2, p1

    .restart local v2    # "myFormat":I
    goto :goto_0

    .line 481
    .end local v2    # "myFormat":I
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getPersonaId()I
    .locals 3

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "userId":I
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v1, :cond_3

    .line 365
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v1, :cond_2

    .line 370
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    .line 378
    :cond_1
    :goto_0
    return v0

    .line 372
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    .line 376
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getUserId()I

    move-result v0

    goto :goto_0
.end method

.method public isClipboardAllowedToUse(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 991
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 992
    :cond_0
    return v1

    .line 996
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->isClipboardAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->isPackageAllowed(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_2
    return v1

    .line 997
    :catch_0
    move-exception v0

    .line 998
    .local v0, "e":Ljava/lang/Exception;
    return v1
.end method

.method public isClipboardShareAllowed()Z
    .locals 3

    .prologue
    .line 1007
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getPersonaId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardService;->isClipboardShareAllowed(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 806
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isUPSMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    :cond_0
    return v3

    .line 812
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 813
    sget-object v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->isEnabled()Z

    move-result v1

    return v1

    .line 815
    :cond_2
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "isEnabled(): ClipboardExService is null, returning false"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :goto_0
    return v3

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isFilterRequired()Z
    .locals 1

    .prologue
    .line 935
    const/4 v0, 0x1

    return v0
.end method

.method public isFiltered()Z
    .locals 1

    .prologue
    .line 650
    const-string/jumbo v0, "isFiltered"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    const/4 v0, 0x0

    return v0

    .line 653
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsFiltered:Z

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 411
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 412
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->isShowing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 418
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public paste(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 860
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 861
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/sec/clipboard/IClipboardService;->pasteClip(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 864
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pasteClip(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 844
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/sec/clipboard/IClipboardService;->pasteClip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    const v1, 0x1040617

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 843
    return-void
.end method

.method public registClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z
    .locals 4
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .prologue
    .line 511
    const-string/jumbo v2, "RegistClipboardWorkingFormUiInterface"

    invoke-direct {p0, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    const/4 v2, 0x0

    return v2

    .line 514
    :cond_0
    const/4 v0, 0x0

    .line 516
    .local v0, "Result":Z
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eq v2, p1, :cond_2

    .line 517
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 520
    :cond_2
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_3

    .line 521
    const-string/jumbo v2, "SemClipboardManager"

    const-string/jumbo v3, "RegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return v0

    .line 526
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v2, v3}, Landroid/sec/clipboard/IClipboardService;->registClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 527
    const-string/jumbo v2, "SemClipboardManager"

    const-string/jumbo v3, "Regist ClipboardWorkingFormUiInterface - Success."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    const/4 v0, 0x1

    .line 532
    :goto_0
    return v0

    .line 529
    :catch_0
    move-exception v1

    .line 530
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public registerClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardEventListener;

    .prologue
    .line 563
    const-string/jumbo v1, "registerClipboardEventListener"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    return-void

    .line 567
    :cond_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 568
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "registerClipboardUIInterface: Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-void

    .line 572
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 573
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 575
    :try_start_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/sec/clipboard/IClipboardService;->addClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 562
    return-void

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 572
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeAll()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 831
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 832
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0}, Landroid/sec/clipboard/IClipboardService;->removeAll()Z

    move-result v0

    return v0

    .line 834
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeClip(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 904
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 905
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/sec/clipboard/IClipboardService;->removeClip(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 907
    :cond_0
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "getService() is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v0, 0x0

    return v0
.end method

.method public requestPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 4
    .param p1, "clipdata"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 685
    const-string/jumbo v1, "requestPaste"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 686
    return-void

    .line 688
    :cond_0
    const-string/jumbo v2, "SemClipboardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestPaste : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 692
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 693
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "requestPaste - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void

    .line 688
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 696
    :cond_2
    if-eqz p1, :cond_4

    .line 697
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->canAlternateClipData(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 698
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 684
    :goto_1
    return-void

    .line 700
    :cond_3
    const-string/jumbo v1, "SemClipboardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t convert format type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 703
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "clipdata is null"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 709
    :cond_5
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "no app clipboard listener!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setData(Landroid/content/Context;Landroid/content/ClipData;Z)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/ClipData;
    .param p3, "setPrimary"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 445
    const/4 v2, 0x0

    .line 448
    .local v2, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-static {p2}, Landroid/sec/clipboard/ClipboardConverter;->ClipDataToClipboardData(Landroid/content/ClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    .line 450
    .local v2, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-nez v2, :cond_0

    .line 451
    return v3

    .line 453
    :cond_0
    if-eqz p3, :cond_1

    move v3, v5

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->addData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZ)I

    move-result v0

    return v0
.end method

.method public setDataWithoutNoti(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    const/4 v3, 0x1

    .line 440
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->addData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZ)I

    move-result v0

    return v0
.end method

.method public setDataWithoutSendingOrginalClipboard(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    const/4 v3, 0x0

    .line 458
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->addData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZ)I

    move-result v0

    return v0
.end method

.method public showDialog()V
    .locals 4

    .prologue
    .line 756
    const-string/jumbo v1, "showDialog"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 757
    return-void

    .line 760
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isClipboardAllowedToUse(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isClipboardShareAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->startClipboardUIServiceService()V

    .line 767
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 768
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "showDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    return-void

    .line 761
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    const v2, 0x1040616

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 762
    return-void

    .line 772
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isFiltered()Z

    move-result v1

    if-nez v1, :cond_3

    .line 773
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->showDialog()V

    .line 755
    :goto_0
    return-void

    .line 775
    :cond_3
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    invoke-interface {v1, v2, v3}, Landroid/sec/clipboard/IClipboardService;->showDialogWithType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 776
    const-string/jumbo v1, "SemClipboardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showDialog - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public showDialog(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)Z
    .locals 6
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .prologue
    const/4 v5, 0x0

    .line 715
    const-string/jumbo v2, "showDialog"

    invoke-direct {p0, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 716
    return v5

    .line 719
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getPersonaId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isClipboardAllowedToUse(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isClipboardShareAllowed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    const/4 v0, 0x1

    .line 725
    .local v0, "Result":Z
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->startClipboardUIServiceService()V

    .line 726
    const-string/jumbo v2, "SemClipboardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    .line 730
    const-string/jumbo v2, "SemClipboardManager"

    const-string/jumbo v3, "showDialog - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    return v5

    .line 720
    .end local v0    # "Result":Z
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    const v3, 0x1040616

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 721
    return v5

    .line 735
    .restart local v0    # "Result":Z
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isFiltered()Z

    move-result v2

    if-nez v2, :cond_3

    .line 736
    iput-object p2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .line 737
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    invoke-interface {v2, p1, v3}, Landroid/sec/clipboard/IClipboardService;->showDialogWithType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 738
    const-string/jumbo v2, "SemClipboardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialog - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :goto_0
    return v0

    .line 740
    :cond_3
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardService;->showDialogWithType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 741
    const-string/jumbo v2, "SemClipboardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialog - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 743
    :catch_0
    move-exception v1

    .line 744
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 745
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unRegistClipboardWorkingFormUiInterface()V
    .locals 3

    .prologue
    .line 537
    const-string/jumbo v1, "unRegistClipboardWorkingFormUiInterface"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    return-void

    .line 541
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 542
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "unRegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v1, :cond_2

    .line 547
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardService;->unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 536
    :goto_0
    return-void

    .line 549
    :cond_2
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "reg interface is null!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "unRegistClipboardWorkingFormUiInterface(RemoteException): "

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardEventListener;

    .prologue
    .line 590
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 592
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 594
    :try_start_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;

    invoke-interface {v1, v3}, Landroid/sec/clipboard/IClipboardService;->removeClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit v2

    .line 589
    return-void

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 590
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateClip(Ljava/lang/String;Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 920
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 921
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/sec/clipboard/IClipboardService;->updateClip(Ljava/lang/String;Lcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    return v0

    .line 923
    :cond_0
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "getService() is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v0, 0x0

    return v0
.end method

.method public updateDialogShowingState(Z)V
    .locals 1
    .param p1, "isShowing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 980
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/sec/clipboard/IClipboardService;->updateDialogShowingState(Z)V

    .line 978
    :cond_0
    return-void
.end method

.method public updateFilter(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V
    .locals 4
    .param p1, "formatid"    # I
    .param p2, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .prologue
    .line 658
    const-string/jumbo v1, "updateFilter"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 659
    return-void

    .line 662
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    const-string/jumbo v1, "SemClipboardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFilter return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return-void

    .line 668
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 669
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "updateFilter - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-void

    .line 673
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isCocktailBarDisplayed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 674
    iput-object p2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .line 675
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    invoke-interface {v1, p1, v2}, Landroid/sec/clipboard/IClipboardService;->updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 676
    const-string/jumbo v1, "SemClipboardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFilter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :cond_3
    :goto_0
    return-void

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
