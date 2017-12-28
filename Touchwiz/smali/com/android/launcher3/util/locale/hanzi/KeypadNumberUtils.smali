.class public Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;
.super Ljava/lang/Object;
.source "KeypadNumberUtils.java"


# static fields
.field private static final LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x38

    const/16 v6, 0x36

    const/16 v5, 0x34

    const/16 v4, 0x33

    const/16 v3, 0x32

    .line 33
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 35
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x30

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x31

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x101

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x103

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x105

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x107

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x10d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x18b

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x18c

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe8

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe9

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xea

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xea

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xeb

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x113

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x119

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1dd

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x121

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e7

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xec

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xed

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xee

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xef

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x129

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x131

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x35

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x137

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x13c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x142

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf1

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x144

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x146

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf2

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf3

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf4

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf5

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf6

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf8

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x37

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 94
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x155

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x159

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x160

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x161

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x163

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x165

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf9

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xfb

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xfc

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 109
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x16b

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x16f

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 110
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x173

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 112
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x39

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 113
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 114
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xfd

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xff

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x17a

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x17c

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 119
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x17e

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 121
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x23

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 122
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    const/16 v2, 0x5e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 123
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static convertTraditionalChineseKeypadLettersToDigits(C)C
    .locals 3
    .param p0, "code"    # C

    .prologue
    .line 444
    const/16 v0, 0x2a

    .line 446
    .local v0, "action_char":C
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    sget-object v1, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char p0, v1

    .line 450
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 536
    :goto_0
    return v0

    .line 457
    :sswitch_0
    const/16 v0, 0x401

    .line 458
    goto :goto_0

    .line 466
    :sswitch_1
    const/16 v0, 0x402

    .line 467
    goto :goto_0

    .line 474
    :sswitch_2
    const/16 v0, 0x403

    .line 475
    goto :goto_0

    .line 482
    :sswitch_3
    const/16 v0, 0x404

    .line 483
    goto :goto_0

    .line 491
    :sswitch_4
    const/16 v0, 0x405

    .line 492
    goto :goto_0

    .line 498
    :sswitch_5
    const/16 v0, 0x406

    .line 499
    goto :goto_0

    .line 506
    :sswitch_6
    const/16 v0, 0x407

    .line 507
    goto :goto_0

    .line 514
    :sswitch_7
    const/16 v0, 0x408

    .line 515
    goto :goto_0

    .line 523
    :sswitch_8
    const/16 v0, 0x409

    .line 524
    goto :goto_0

    .line 530
    :sswitch_9
    const/16 v0, 0x42d

    .line 531
    goto :goto_0

    .line 450
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_9
        0x31 -> :sswitch_0
        0x32 -> :sswitch_1
        0x33 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_4
        0x36 -> :sswitch_5
        0x37 -> :sswitch_6
        0x38 -> :sswitch_7
        0x39 -> :sswitch_8
        0x3105 -> :sswitch_0
        0x3106 -> :sswitch_0
        0x3107 -> :sswitch_0
        0x3108 -> :sswitch_0
        0x3109 -> :sswitch_1
        0x310a -> :sswitch_1
        0x310b -> :sswitch_1
        0x310c -> :sswitch_1
        0x310d -> :sswitch_2
        0x310e -> :sswitch_2
        0x310f -> :sswitch_2
        0x3110 -> :sswitch_3
        0x3111 -> :sswitch_3
        0x3112 -> :sswitch_3
        0x3113 -> :sswitch_4
        0x3114 -> :sswitch_4
        0x3115 -> :sswitch_4
        0x3116 -> :sswitch_4
        0x3117 -> :sswitch_5
        0x3118 -> :sswitch_5
        0x3119 -> :sswitch_5
        0x311a -> :sswitch_6
        0x311b -> :sswitch_6
        0x311c -> :sswitch_6
        0x311d -> :sswitch_6
        0x311e -> :sswitch_7
        0x311f -> :sswitch_7
        0x3120 -> :sswitch_7
        0x3121 -> :sswitch_7
        0x3122 -> :sswitch_8
        0x3123 -> :sswitch_8
        0x3124 -> :sswitch_8
        0x3125 -> :sswitch_8
        0x3126 -> :sswitch_8
        0x3127 -> :sswitch_9
        0x3128 -> :sswitch_9
        0x3129 -> :sswitch_9
        0x4e00 -> :sswitch_0
        0x4e28 -> :sswitch_1
        0x4e36 -> :sswitch_3
        0x4e3f -> :sswitch_2
        0x4e5b -> :sswitch_4
    .end sparse-switch
.end method

.method private static isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p0, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .prologue
    .line 146
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "Display_name"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    const/4 v4, 0x0

    .line 230
    :goto_0
    return-object v4

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v0, "action_code":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 221
    .local v3, "size":I
    const/4 v2, 0x0

    .line 222
    .local v2, "idx":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 225
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 226
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 227
    .local v1, "code":C
    invoke-static {v1}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    .end local v1    # "code":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
