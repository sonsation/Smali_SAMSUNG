.class final enum Lcom/android/launcher3/folder/view/FolderView$FolderColor;
.super Ljava/lang/Enum;
.source "FolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/view/FolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FolderColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher3/folder/view/FolderView$FolderColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/folder/view/FolderView$FolderColor;

.field public static final enum FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

.field public static final enum FOLDER_COLOR_2:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

.field public static final enum FOLDER_COLOR_3:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

.field public static final enum FOLDER_COLOR_4:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

.field public static final enum FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    new-instance v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const-string v1, "FOLDER_COLOR_1"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    new-instance v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const-string v1, "FOLDER_COLOR_2"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    new-instance v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const-string v1, "FOLDER_COLOR_3"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    new-instance v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const-string v1, "FOLDER_COLOR_4"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    new-instance v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const-string v1, "FOLDER_COLOR_5"

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    .line 126
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->$VALUES:[Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    const-class v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->$VALUES:[Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    invoke-virtual {v0}, [Lcom/android/launcher3/folder/view/FolderView$FolderColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    return-object v0
.end method
